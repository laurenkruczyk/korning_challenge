class SwitchAccountNumberToString < ActiveRecord::Migration
  def change

  change_table :customers do |t|
      t.remove :account_number
  end

  change_table :customers do |t|
    t.string :account_number
  end

  end
end
