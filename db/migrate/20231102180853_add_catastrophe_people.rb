class AddCatastrophePeople < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :catastrophe, foreign_key: true
    #oquefaz      :tabelaonde, :nomecampo, tipocampo
  end
end
