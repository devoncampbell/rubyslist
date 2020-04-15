class Listing < ActiveRecord::Base

    belongs_to :category
    belongs_to :subcategory
    belongs_to :user
    validates :user_id, presence: true

    def self.search(params)
        listings = Listing.where(category_id: params[:category].to_i)
        listings = listings.where('Title Like ? Or Description Like ?', params[:search], params[:search]) if params[:search].present?
        listings
    end

end