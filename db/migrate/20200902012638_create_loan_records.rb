class CreateLoanRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :loan_records do |t|
      t.integer :loan_amount
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :naics_code
      t.string :business_type
      t.string :race_ethnicity
      t.string :gender
      t.string :veteran
      t.string :non_profit
      t.integer :jobs_retained
      t.datetime :date_approved
      t.string :lender
      t.string :congressional_district

      t.timestamps
    end
  end
end
