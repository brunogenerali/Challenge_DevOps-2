# Challenge DevOps Alura

## Sobre o projeto

Fazer o deploy de uma aplicação através de uma maquina virtual. 

Para realizar o deploy da aplicação será usado uma aplicação já existente, precisaremos criar uma maquina virtual para a aplicação, colocar o código da aplicação em um repositório, vamos automatizar o processo de testes e deploy usando rotinas de CI e CD. Por fim vamos coletar métricas da aplicação usando ferramentas de SRE.

| :placard: Vitrine.Dev |     |
| -------------  | --- |
| :sparkles: Nome        | **Challenge DevOps**
| :label: Tecnologias | java, terraform, CI/DC
| :rocket: URL         | 
| :fire: Desafio     | [Challenge DevOps 2]([https://](https://www.alura.com.br/challenges/devops-2))

<!-- Inserir imagem com a #vitrinedev ao final do link -->
![](https://img.mandic.com.br/2018/06/Devops-o-que-e-DevOps-significado.png?rel=outbound#vitrinedev)

## Detalhes do projeto

### Familiarizando com a aplicação

Pesquisado como realizar build de projetos JAVA Springboot com Maven.
Principal fonte foi a própria formação de [Java Springboot]([https://](https://cursos.alura.com.br/formacao-spring-boot-3)) da Alura.

### Criando a Maquina virtual

**Ambiente 1:**

- Foi criado uma maquina virtual local utilizando Hyper-V. Sistema Operacional Ubuntu 22;  
- Realizado instalação das tecnologias utilizadas, Java 17, Maven e MySql;  
- Configurado acesso e usuário do banco de dados, e criados as 2 base de dados;  
- Configurado firewall e DNS para receber conexões para o CI/CD;  

**Ambiente 2:**

- Criado 2 instancias EC2 na AWS. Sistema Operacional Ubuntu 22;  
- Em uma instancia instaldo tecnologias utilizadas para a aplicação. Na outra instalado o Banco de Dados MySql;  
- Configurado Security Groups para acessos externos e conexão do banco;  
- Configurado acesso e usuário do banco de dados, e criados as 2 base de dados;  
- Utilizar Terraform e Ansible para provisionar e gerenciar as instancias (Em desenvolvimento);

### Testando a aplicação na VM

**Ambiente 1:**
Realizado clone do repositório, realizado o BUILD da API e executado o arquivo .jar criado.

`mvn clean package`  
`nohup java -Dspring.profiles.active=prod -DDATASOURCE_URL=jdbc:mysql://localhost/vollmed_api -DDATASOURCE_USERNAME=root -DDATASOURCE_PASSWORD=root -jar target/api-0.0.1-SNAPSHOT.jar > out.txt 2>&1 &`  


**Em desenvolvimento...**

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

Projeto desenvolvido por [Alura](https://www.alura.com.br) e utilizado nos cursos de Spring Boot.

Instrutor: [Rodrigo Ferreira](https://cursos.alura.com.br/user/rodrigo-ferreira) 

---
