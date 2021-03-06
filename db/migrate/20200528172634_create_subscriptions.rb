class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.integer :plan_id

      t.timestamps
    end

    add_index :subscriptions, :plan_id
  end
end
