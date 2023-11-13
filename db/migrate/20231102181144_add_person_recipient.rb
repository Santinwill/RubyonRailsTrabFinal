class AddPersonRecipient < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipient, :person, foreign_key: true
    #oquefaz      :tabelaonde, :nomecampo, tipocampo
  end
end
