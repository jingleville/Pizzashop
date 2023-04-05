class CeedDb < ActiveRecord::Migration[7.0]
  def change
    Product.create  :title => 'cheese', 
                    :decription => "this is a cheese pizza",
                    :price => 350.0,
                    :size => 30.0,
                    :is_spicy => false,
                    :is_veg => true,
                    :is_best_offer => false,
                    :path_to_image => '/images/cheese.jpg'

    Product.create  :title => 'meat',
                    :decription => "this is a meat pizza",
                    :price => 500.0,
                    :size => 30.0,
                    :is_spicy => true,
                    :is_veg => false,
                    :is_best_offer => false,
                    :path_to_image => '/images/meat.jpg'


    Product.create  :title => 'veg',
                    :decription => "this is a veg pizza",
                    :price => 300.0,
                    :size => 30.0,
                    :is_spicy => false,
                    :is_veg => true,
                    :is_best_offer => false,
                    :path_to_image => '/images/veg.jpg'


    Product.create :title => 'margarita',
                    :decription => "this is a margerita pizza",
                    :price => 400.0,
                    :size => 30.0,
                    :is_spicy => false,
                    :is_veg => true,
                    :is_best_offer => true,
                    :path_to_image => '/images/margarita.jpg'

  end
end
