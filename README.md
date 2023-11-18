# RubyonRailsTrabFinal


# Rails Cheat Sheet!
Este Cheat Sheet abrange alguns dos comandos essenciais e ou utilizados neste projeto.




# Vagrant
## vagrant
comando que indica para que você quer usar ou gerenciar o ambientes de desenvolvimento virtual(VM)
### up
Usado para iniciar uma máquina virtual definida no Vagrantfile
### suspend
Para pausar a máquina virtual
### halt
Para parar a máquina virtual
### ssh
O Vagrant estabelecerá uma conexão SSH com a máquina virtual e você será logado na máquina virtual automaticamente
Depois de executar o vagrant ssh, você terá acesso ao shell da máquina virtual e poderá interagir com ela como se estivesse trabalhando diretamente nessa máquina. É útil para executar comandos, realizar tarefas de configuração e verificar arquivos dentro da máquina virtual.


# Instalar gem
## gem install
Inicia o sistema de gerenciamento de gemas (pacotes Ruby) para instalar uma gema
## rails
Nome da gema que desejamos instalar, neste caso, o Ruby on Rails.
## -v 5.2.8
Especifica a versão exata do Rails que será instalada


# RVM
O RVM (Ruby Version Manager) é uma ferramenta que permite gerenciar várias versões do Ruby no sistema.
## rvm list
Esse comando lista as versões do Ruby que estão instaladas em seu sistema através do RVM.
## rvm list known
Lista as versões do Ruby conhecidas disponíveis para instalação.
## rvm install 2.3
Instala uma versão específica do Ruby, neste caso, a versão 2.3
## rvm use 2.6
Instrui o RVM a usar a versão especificada do Ruby (2.6) como a versão ativa. Isso significa que, sempre que você executar um comando Ruby, ele usará a versão 2.6 que você especificou.
 

# Rails
## rails _5.2_ new <nomedoprograma> -d postgresql
rails: comando que indica para o cmd que você quer usar as funções do framework rails
_5.2_: criar o aplicativo usando a versão 5.2 do Ruby on Rails
new: novo projeto
<nomedoprograma>: nome do projeto
-d postgresql: indica que desejamos usar o banco de dados PostgreSQL como o banco de dados padrão para a aplicação Rails
O Rails irá gerar a estrutura inicial do projeto, instalar as dependências e configurar o ambiente


## rails s -b 0.0.0.0 -e development
rails s = rails server: usado para iniciar o servidor de desenvolvimento
-b 0.0.0.0: É uma configuração que faz com que o servidor Rails escute em todas as interfaces de rede disponíveis. O servidor estará acessível não apenas a partir do localhost (127.0.0.1), mas também de outras máquinas na mesma rede
-e (development, test, production): estamos instruindo o servidor a iniciar no ambiente especificado


## desativar servidor
ctrl+C
ou
kill -9  $(cat tmp/pids/server.pid)

# generators
## rails generate controller <pagina_inicial> ou rails g controller <pagina_inicial>
rails: comando usado para interagir com o ambiente de desenvolvimento Ruby on Rails.
generate: subcomando do Rails usado para gerar código automaticamente. Quando usa-se generate, está instruindo o Rails a criar ou gerar alguma coisa, como um modelo, um controlador, um scaffold.
## rails destroy controller <pagina_inicial> ou rails d controller <pagina_inicial>
destroy: está tentando "destruir" um controlador
<pagina_inicial>: nome do que esta sendo gerado

### rails generate scaffold  <Model> <campo1:tipo> <campo2>...
scaffold: indica que está sendo criando uma estrutura completa de CRUD (Create, Read, Update, Delete) para um recurso em sua aplicação. Gera automaticamente uma Model, um controller, view e migration de banco de dados
<Model>: é o nome do que está sendo gerado(tabela do banco, model, controller, view)
<campo1:tipo> <campo>: campos da tabela com sua respectiva tipagem. Quando não é citada a tipagem, por default atribui-se o tipo String


# rails dbconsole
dbconsole: usado para iniciar um console de banco de dados diretamente a partir do Rails, permitindo que se executem comandos SQL e interaja com o banco de dados sem sair do ambiente Rails.


# Task
## rails -T db
É uma forma de listar todos os comandos relacionados a banco de dados.
## rails db:
rails: comando que indica para o cmd que você quer usar as funções do framework rails
db: categoria/agrupamento de tasks do tipo database
### create
Cria um novo banco de dados
### drop
Exclui o banco de dados.
### migrate
realiza a migração do banco executando as alterações pendes no banco de dados
### rollback
Reverter a migração mais recente
### seed
Preenche o banco de dados com dados iniciais definidos em 'db/seeds.rb'
### setup
Cria o banco de dados, carrega o esquema e executa as migrações, tudo em um comando