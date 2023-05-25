# Challenge DevOps Alura

## ♾️ Sobre o projeto

Fazer o deploy de uma aplicação através de uma maquina virtual. 

Para realizar o deploy da aplicação será usado uma aplicação já existente, precisaremos criar uma maquina virtual para a aplicação, colocar o código da aplicação em um repositório, vamos automatizar o processo de testes e deploy usando rotinas de CI e CD. Por fim vamos coletar métricas da aplicação usando ferramentas de SRE.

| 🪟 Vitrine.Dev |     |
| -------------  | --- |
| :sparkles: Nome        | **Challenge DevOps**
| 💻 Tecnologias | java, terraform, ansible, CI/DC
| :rocket: URL         |
| :fire: Desafio     | [Challenge DevOps 2]([https://](https://www.alura.com.br/challenges/devops-2))

<!-- Inserir imagem com a #vitrinedev ao final do link -->
![Simbolo do infinito com processos DevOps](https://img.mandic.com.br/2018/06/Devops-o-que-e-DevOps-significado.png?rel=outbound#vitrinedev)

## 📃 Detalhes do projeto

### Familiarizando com a aplicação

Disponibilizado a aplicação desenvolvida em uma formação de JAVA Springboot na Alura: [GitHub](https://github.com/rcaneppele/2771-spring-boot)

- [x] Pesquisar como realizar build de projetos JAVA Springboot com Maven.
Principal fonte foi a própria formação de [Java Springboot]([https://](https://cursos.alura.com.br/formacao-spring-boot-3)) da Alura.

### Criando a Maquina virtual

**Ambiente 1:**

- [x]  Foi criado uma maquina virtual local utilizando Hyper-V. Sistema Operacional Ubuntu 22;  
- [x] Realizado instalação das tecnologias utilizadas, Java 17, Maven e MySql;  
- [x] Configurado acesso e usuário do banco de dados, e criados as 2 base de dados;  
- [x] Configurado firewall e DNS para receber conexões para o CI/CD;

**Ambiente 2:**

- [x] Criar 2 instancias EC2 na AWS. Sistema Operacional Ubuntu 22;  
- [x] Em uma instancia instalar tecnologias utilizadas para a aplicação. Na outra instalado o Banco de Dados MySql;  
- [x] Configurar Security Groups para acessos externos e conexão do banco;  
- [x] Configurar acesso e usuário do banco de dados, e criar as 2 base de dados;  

### Testando a aplicação na VM

- [x] Clonar repositório original;
- [x] Realizar BUILD passando pelos teste;
- [x] Executar a aplicação e testar acesso;

`mvn clean package`  
`nohup java -Dspring.profiles.active=prod -DDATASOURCE_URL=jdbc:mysql://localhost/vollmed_api -DDATASOURCE_USERNAME="db_user" -DDATASOURCE_PASSWORD="da_password" -jar target/api-0.0.1-SNAPSHOT.jar > out.txt 2>&1 &`  

O Comando nohup é para executar em segundo plano sem bloquear o terminal;
O parâmetro out.txt é para gravar a saída do comando em um arquivo;

### CI/CD

- [x] Criar Pipeline de CI/CD com Github Actions;  
- [x] Realizar rotina de testes já presentes na API  
- [x] Feito Deploy via conexão SSH, e execução de Script de inicialização.  

### IaC

Como desafio adicional propus-me a utilizar Infraestrutura como código para provisionar e gerenciar os ambientes.

- [ ] Automatizar provisionamento da infraestrutura Hyper-V com Vagrant;
- [ ] Automatizar gerenciamento da infra Hyper-V com Ansible;
- [x] Utilizar Terraform para provisionar as instancias na AWS;
- [ ] Utilizar Ansible para gerenciar a instancia do banco de dados; (Completo Parcialmente)
- [x] - Utilizar Ansible para gerenciar a instancia da Aplicação;
- [ ] - Utilizar boas práticas de segurança em informações sensíveis;

### Monitoramento e SRE

- [ ] Utilizar o Prometheus para coletar métricas;
- [ ] Utilizar Grafana para visualizar métricas coletadas;

-----

## 💻 Sobre a API

Voll.med é uma clínica médica fictícia que precisa de um aplicativo para gestão de consultas. O aplicativo deve possuir funcionalidades que permitam o cadastro de médicos e de pacientes, e também o agendamento e cancelamento de consultas.

Enquanto um time de desenvolvimento será responsável pelo aplicativo mobile, o nosso será responsável pelo desenvolvimento da API Rest desse projeto.

---

## ⚙️ Funcionalidades

- [x] CRUD de médicos;
- [x] CRUD de pacientes;
- [x] Agendamento de consultas;
- [x] Cancelamento de consultas.

---

## 🎨 Layout

O layout da aplicação mobile está disponível neste link: <a href="https://www.figma.com/file/N4CgpJqsg7gjbKuDmra3EV/Voll.med">Figma</a>

---

## 📄 Documentação

A documentação das funcionalidades da aplicação pode ser acessada neste link: <a href="https://trello.com/b/O0lGCsKb/api-voll-med">Trello</a>

---

## 🛠 Tecnologias

As seguintes tecnologias foram utilizadas no desenvolvimento da API Rest do projeto:

- **[Java 17](https://www.oracle.com/java)**
- **[Spring Boot 3](https://spring.io/projects/spring-boot)**
- **[Maven](https://maven.apache.org)**
- **[MySQL](https://www.mysql.com)**
- **[Hibernate](https://hibernate.org)**
- **[Flyway](https://flywaydb.org)**
- **[Lombok](https://projectlombok.org)**

---

## 📝 Licença

API desenvolvido por [Alura](https://www.alura.com.br) e utilizado nos cursos de Spring Boot.

Instrutor: [Rodrigo Ferreira](https://cursos.alura.com.br/user/rodrigo-ferreira) 

---
