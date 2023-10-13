# RubyonRailsTrabFinal

# Rails Cheat Sheet!
Esta Cheat Sheet abrange alguns dos comandos essenciais e ou utilizados neste projeto.

slide 01

13.Abrir o Git Bash
Rodar os comandos de teste
vagrant --version 
git --version 

14.Configurar o seu git
git config --global user.name “Iskailer”
git config --global user.email “iskailer……@...”

15.Criar um repositório no Github
Clonar o repositório para a pasta c:\Projetos
git clone https://github.com/iskailer/rails-ini.git 
cd rails-ini

16.Instalar plugin do vagrant
vagrant plugin install vagrant-vbguest 

17.criar Vagrantfile
vagrant init GuiDev/Ubuntu-Rails5x --box-version 1.0.0

18.Verificar Vagrantfile
Vagrant.configure("2") do |config| config.vm.box = "GuiDev/Ubuntu-Rails5x" config.vm.box_version = "1.0.0" config.vm.network :forwarded_port, guest: 3000, host: 3000 config.vm.network :forwarded_port, guest: 5432, host: 5432 config.vm.provider "virtualbox" do |vb| vb.gui = true vb.memory = "1024" end end 

19.Iniciar Vagrant
vagrant up 

20. Comandos uteis 
Para pausar a box 
vagrant suspend
Para parar a box vagrant halt
vagrant halt

21.Conectar na maquina
vagrant ssh 

22.Verificar Ruby & Rails & PG
Ruby -v 
Rails -v 
psql --version

gem install rails 
gem install rails -v 5.2.8 
gem install rails –version=5.2.8

23.Acessar pasta compartilhada
cd ..
ls
cd vagrant 

24.Usar o RVM
rvm list 
rvm list known 
rvm install 2.3 
rvm use 2.6 

25.Usar o Ruby puro
ruby nome_arquivo.rb 

26.Usar o IRB - Interactive Ruby Shell
irb 
puts “teste direto” 
“Feijao e bao demais”.reverse 
exit 

27.Pry (Gem)
gem install pry 
pry 
puts “teste direto” 
“Feijao e bao demais”.reverse 
exit 

28.Rails
rails new projetinho 

29.Rails
rails new projetinho
cd projetinho 
rails server -> rails s -b 0.0.0.0 


slide02

6.Rails 
rails 
rails new projetinho 
rails _5.2_ new <nomedoprograma>
rails _5.2_ new <nomedoprograma> -d postgresql
Nome do programa = projetinho_2 
Ou buscar o postgres no google database.yml
11.scaffold 
rails generate scaffold  <Model> <campo:tipo> <campo:tipo> <campo(sem declarar vira string)>...
Ou buscar o postgres no google rails generators cheat sheet e rails Schema Statements

15.
https://guides.rubyonrails.org/active_record_basics.html https://pt.wikipedia.org/wiki/Active_record 

17.São uma funcionalidade do AR que permite especificar as tabelas do bd usando o Ruby; ۞ Permite ações no BD sem utilizar SQL; 
۞ Disponibiliza a sequência de criação das tabelas do projeto; 

18.Migrations controlam o que foi ou não aplicado através do db/schema.rb;
 ۞ As migrations ficam em db/migrate;
 ۞ Ao criar as migrações é preciso aplicá-las ao BD usando tasks predefinidas do Rails.

19.rails dbconsole é o comando usado para conectar ao banco de dados e executar comandos para inspecioná-lo. 
۞ Uma alternativa para os gerenciadores próprios como o pgadmin

20.rails dbconsole
rails dbconsole 
rails db 

21.rails tasks
Tarefas predefinidas que o rails pode executar; 
۞ Generators geram, tasks executam.





# Task
## rails -T db
É uma forma de listar todas os comandos relacionados a banco de dados.
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
Reverte a migração mais recente
### seed
Preenche o banco de dados com dados iniciais definidos em 'db/seeds.rb'.
### setup
Cria o banco de dados, carrega o esquema e executa as migrações, tudo em um comando.



23.Rails
rails server -> rails s -b 0.0.0.0

24.Ambientes
۞ 3 ambientes padrões (development, test, production); 
۞ Permite diferentes configurações para cada ambiente; 
۞ Orientado a testes. 

25.Rails
RAILS_ENV=production rails s -b 0.0.0.0 
rails s -b 0.0.0.0 -e production 
26.generators
rails generate 
rails generate controller pagina_inicial
rails destroy controller pagina_inicial 
rails d controller pagina_inicial 
rails g controller welcome index 

27.EMBEDDED RUBY Uma forma de mesclar código ruby com texto https://pt.wikipedia.org/wiki/ERuby 
https://docs.ruby-lang.org/en/2.3.0/ERB.html 

28.۞ Usado para embutir código ruby em documentos HTML, semelhante ao ASP, JSP e PHP 
۞ <% o que estiver aqui não exibe %> 
۞ <%= o que estiver aqui exibe %> 
۞ Index.html.erb test.json.erb

29.help
Métodos prontos que podem ser utilizadas para auxiliar na view. 
۞ Ajuda a manter o DRY (Don’t Repeat Yourself) 
۞ cities_helper.rb 

30.Helper link_to 
<%= link_to 'Exibir', '/cities'%> 
<%= link_to 'Exibir', city %>
Um método pronto para facilitar a escrita de links usando código rails

31.Helper imagem
<td><img src=”  ”<%= city.image %>”” width=”25px” height=”25px”> 
<%= image_tag city.image , width: 25, height: 25 %> 
<%= image_tag city.image , size: “25x25” %>

32.Helper data
<%= Date.today %> 
<%= Date.today.strftime("%d/%m/%Y") %>
 <%= br_date(Date.today) %> 
—------------- helper 
module ApplicationHelper 
def br_date(us_date)
 us_data.strftime("%d;%m;%Y") 
end 
end 

33.cities_helper.rb
def formata_cep (n_cep )
cep = n_cep.to_s 
cep_formatado = cep [ 0.. 1 ] 
cep_formatado << "." 
cep_formatado << cep [ 2.. 4 ] 
cep_formatado << "-" 
cep_formatado << cep [ 5.. 7 ] 
cep_formatado 
end 


