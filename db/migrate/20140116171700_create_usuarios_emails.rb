class CreateUsuariosEmails < ActiveRecord::Migration
  def change
    create_table :usuarios_emails do |t|
      t.string :nombre
      t.string :email
      t.string :identificador

      t.timestamps
    end
  end
end
