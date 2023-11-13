class AddCatastrophePerson < ActiveRecord::Migration[5.2]
  def change
    add_reference :person, :catastrophe, foreign_key: true
    #oquefaz      :tabelaonde, :nomecampo, tipocampo
  end
end
