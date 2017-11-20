class CreateSecretcodes < ActiveRecord::Migration[5.1]
  def change
    create_table :secretcodes do |t|

      t.timestamps
    end
  end
end
