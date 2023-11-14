class AddPeopleRecipient < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipients, :people, foreign_key: true
    #oquefaz      :tabelaonde, :nomecampo, tipocampo
  end
end
