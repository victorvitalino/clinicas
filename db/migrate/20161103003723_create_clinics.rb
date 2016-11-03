class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :cnpj
      t.string :social_name
      t.string :fantasy_name
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :cep
      t.string :phone
      t.string :fax
      t.string :celphone
      t.string :representative_name
      t.string :representative_phone
      t.string :geolocation
      t.date :nusai
      t.references :procedure_class, index: true

      t.timestamps null: false
    end
  end
end
