class CreateBlogs < ActiveRecord::Migration
    def change
     create_table :blogs do |t|

      t.references     :tag
      t.references     :post
      t.timestamps
   end   
  end
end
