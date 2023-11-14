class AddCatastropheRecipient < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipients, :catastrophe, foreign_key: true
    #oquefaz      :tabelaonde, :nomecampo, tipocampo
  end
end
