<a name="readme-top"></a>

<div align="center">

  <img src="https://user-images.githubusercontent.com/84629565/202665566-ba1a8ed3-041f-45bc-b21b-efdcc357189b.png" alt="logo" width="140"  height="auto" />
  <br/>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [Website Mockup 📱 💻 🖥️](#screenshots)
    - [🖺 Entity Relationship Diagram](#er-diagram)
  - [<img src="https://cdn-icons-png.flaticon.com/512/5360/5360804.png" width="23" height="20"/> Kanban Board](#kanban-board)
  - [<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/539px-React-icon.svg.png" width="23" height="20"/> React Frontend](#react-frontend)
  - [<img src="https://emojipedia-us.s3.amazonaws.com/source/microsoft-teams/337/spiral-notepad_1f5d2-fe0f.png" width="23" height="20"/> API Documentation](#api-docs)
  - [🚀 Live Demo](#live-demo)
  
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Regal Cars Backend <a name="about-project"></a>
![eldorado-logo](https://user-images.githubusercontent.com/84629565/211169801-59cc4f73-65db-4784-81db-c591b74b87ce.png)

**Regal Cars** is a luxury car rental application where the user can register new accounts, log in and reserve a set of different cars. It is built and connected by using two different repos, including Back-end(Rails) and Front-end(React/Redux).

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li>Rails</li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Car List endpoints]**
- **[Authentication to access Reservations]**
- **[Authenticated Users can add/remove a Car]**
- **[Authenticated Users can reserve a Car]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- API Docs -->

![API docs](https://user-images.githubusercontent.com/54780027/231417300-1e05901f-da89-4475-b7f6-a17102811dda.PNG)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ER DIAGRAM-->
## :card_index: Entity Relationship Diagram <a name="er-diagram"></a>
![erd](https://user-images.githubusercontent.com/54780027/231417553-6cf720cb-76db-47f9-8923-3b7c8af175f9.PNG)

<!-- React Frontend -->
## <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/539px-React-icon.svg.png" width="23" height="20"/> React Frontend <a name="react-frontend"></a>
- Here is the Frontend part of the project [Front End](https://github.com/PromzzyKoncepts/Book-Appointment-Front-end)

## 🚀 kanban board <a name="board"></a>

- Here is the kanban board of the project
- ![kanban board](https://user-images.githubusercontent.com/54780027/231417798-2c94099c-f01a-478a-b9c4-3f76d9276478.PNG)

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo :rocket:](https://regal.netlify.app/) :smiley:

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.
### Prerequisites

To run this project you need:
`Git` and `Ruby`
```
 gem install rails
```

### Install

Install this project with:

```sh
  bundle install
```
- Generate a secret key using `rails secret`
- Create a  `.env` file with the following content:
```
POSTGRES_USER=postgres
# If you declared a password when creating the database:
POSTGRES_PASSWORD=YourPassword
POSTGRES_HOST=localhost
POSTGRES_DB=Hello_Rails_Backend_development
POSTGRES_TEST_DB=Hello_Rails_Backend_test
# Devise secret key
DEVISE_JWT_SECRET_KEY=Secret Key you generated
```

Create a Database (Mandatory)

```
rails db:create
```

If you have made a migration then run this command

```
rails db:migrate
```
```
rails db:seed
```
### Usage

To run the project, execute the following command:

```sh
   rails s -p 3001 # # for serving the API on localhost:3001
```

Run tests
```
bundle exec rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors (4 Micronauts) <a name="authors"></a>

👤 **Aamir Khan**

- GitHub: [@aamirkhan2478](https://github.com/aamirkhan2478)
- Twitter: [@SmartKhan2478](https://twitter.com/SmartKhan2478)
- LinkedIn: [Aamir Khan](https://www.linkedin.com/in/aamir-khan-302a44237/)

👤 **Ndikumana Isaie**

- GitHub: [ndikumanaisaie](https://github.com/ndikumanaisaie)
- Twitter: [Ndikuma38670724](https://twitter.com/Ndikuma38670724)
- LinkedIn: [Ndikumana Isaie](https://www.linkedin.com/in/ndikumanaisaie/)

👤 **Abdullah Khan**

- GitHub: [@Abdullah](https://github.com/Abdullah2213565)
- Twitter: [@Abdullah](https://twitter.com/dulakhan024)
- LinkedIn: [@Abdullah](https://www.linkedin.com/in/abdullah-khan2002/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Admin Roles and access to add New lux Cars]**
- [ ] **[Keep count of cars using addtional attribute]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank:
- [Microverse](https://www.microverse.org/)
- Code Reviewers


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **How I can install rails?**

  - You can follow the [official guide](https://guides.rubyonrails.org/getting_started.html#installing-rails) to install rails. If you have gem installed, you can run `gem install rails` to install rails.

- **How I can run this project?**

  - After cloning the repository, run `bundle` and then run `rails s` with option argument `-p 3000`. This will run the server on `localhost:3000`. You can change the port number if you want. Then you can use any API client to test the endpoints. For example, you can use [Postman](https://www.postman.com/) or [Insomnia](https://insomnia.rest/). You can also use the [API Documentation](https://eldorado.onrender.com/api-docs/) to test the endpoints. 

- **How I can run tests?**
  
    - After cloning the repository, run `bundle` and then run `rspec` to run the tests. 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
