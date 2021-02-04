## LAN Tournament planner app - live state and styles updates.

---

![](readme.gif)

---

## Stack

* <img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?&style=for-the-badge&logo=ruby&logoColor=white"/> as language.
* <img alt="Rails" src="https://img.shields.io/badge/rails%20-%23CC0000.svg?&style=for-the-badge&logo=ruby-on-rails&logoColor=white"/> as framework.
* <img alt="Postgres" src ="https://img.shields.io/badge/postgres-%23316192.svg?&style=for-the-badge&logo=postgresql&logoColor=white"/> as database.
* <img alt="Heroku" src="https://img.shields.io/badge/heroku%20-%23430098.svg?&style=for-the-badge&logo=heroku&logoColor=white"/> for deployment in production.
* <img alt="Bootstrap" src="https://img.shields.io/badge/bootstrap%20-%23563D7C.svg?&style=for-the-badge&logo=bootstrap&logoColor=white"/> a CSS framework.
* <img alt="SASS" src="https://img.shields.io/badge/SASS%20-hotpink.svg?&style=for-the-badge&logo=SASS&logoColor=white"/> for Front-End styling.
* <img alt="CSS3" src="https://img.shields.io/badge/css3%20-%231572B6.svg?&style=for-the-badge&logo=css3&logoColor=white"/> for Front-End styling.
* <img alt="JavaScript" src="https://img.shields.io/badge/javascript%20-%23323330.svg?&style=for-the-badge&logo=javascript&logoColor=%23F7DF1E"/> for scripts and Front-End styling.
* <img alt="HTML5" src="https://img.shields.io/badge/html5%20-%23E34F26.svg?&style=for-the-badge&logo=html5&logoColor=white"/> for Front-End styling.
* **nested-scaffolds** for nested models.
* **Redis** as a dependency for StimulusReflex and for Heroku.
* **StimulusReflex** for reactive real time updates with reflexes by intercepting user interactions and passing them to Rails over real-time websockets that change the application state.
* **CableReady** to broadcast DOM updates from multiple clients at once using **ActionCable**, notify the users and update the UI, real time updates for posts.
* **Font-Awesome** as an icon toolkit 
* **better_errors** gem in development

---

## Configuration & dependencies

### System dependencies

`Ruby: 2.7.2p137`

`Rails: 6.0.3.4`

`Redis: 4.2.5`

`database: postgresql`

### Configuration

`git clone https://github.com/tmtocb/LANtournament-rails-stimulusreflex`

`bundle install`

install stimulus_reflex: `bundle exec rails stimulus_reflex:install`

### Empty database

`rails db:drop db:create db:migrate`

### Run the app

`rails s`