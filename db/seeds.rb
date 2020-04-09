# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Categories
uniform_category = Category.where(name: 'Uniform').first_or_create(name: 'Uniform')
textbook_category = Category.where(name: 'Textbook').first_or_create(name: 'Textbook')
tutor_category = Category.where(name: 'Tutor').first_or_create(name: 'Tutor')

#Subcategories of Uniform
Subcategory.where(name: 'Shirts', category_id: uniform_category.id).first_or_create(name: 'Shirts', category_id: uniform_category.id)
Subcategory.where(name: 'Sweaters', category_id: uniform_category.id).first_or_create(name: 'Sweaters', category_id: uniform_category.id)
Subcategory.where(name: 'Blazers', category_id: uniform_category.id).first_or_create(name: 'Blazers', category_id: uniform_category.id)
Subcategory.where(name: 'Pants', category_id: uniform_category.id).first_or_create(name: 'Pants', category_id: uniform_category.id)
Subcategory.where(name: 'Skirts', category_id: uniform_category.id).first_or_create(name: 'Skirts', category_id: uniform_category.id)

#Subcategories of Textbook
Subcategory.where(name: 'Math', category_id: textbook_category.id).first_or_create(name: 'Math', category_id: textbook_category.id)
Subcategory.where(name: 'Science', category_id: textbook_category.id).first_or_create(name: 'Science', category_id: textbook_category.id)
Subcategory.where(name: 'English', category_id: textbook_category.id).first_or_create(name: 'English', category_id: textbook_category.id)
Subcategory.where(name: 'History', category_id: textbook_category.id).first_or_create(name: 'History', category_id: textbook_category.id)

#Subcategories of Tutor
Subcategory.where(name: 'Math', category_id: tutor_category.id).first_or_create(name: 'Math', category_id: tutor_category.id)
Subcategory.where(name: 'Science', category_id: tutor_category.id).first_or_create(name: 'Science', category_id: tutor_category.id)
Subcategory.where(name: 'English', category_id: tutor_category.id).first_or_create(name: 'English', category_id: tutor_category.id)
Subcategory.where(name: 'History', category_id: tutor_category.id).first_or_create(name: 'History', category_id: tutor_category.id)