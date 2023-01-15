let Resume =
      https://raw.githubusercontent.com/gaelreyrol/dhall-resume/bf916965d55ecf58d9b4320b7fc7175d2339792d/package.dhall
        sha256:d40a87ca5a3e94bc4650f99947ee422906731cdf161ace9dded2e7e9b66a0b86

let monthly = { per = "month" }

in  Resume.Basic::{
    , basics = Some Resume.Basics::{
      , name = Some "Gaël Reyrol"
      , image = Some "https://gaelreyrol.dev/_nuxt/static/avatar.jpeg"
      , email = Some "me@gaelreyrol.dev"
      , url = Some "https://gaelreyrol.dev"
      , label = Some "Développeur Fullstack & Ops"
      , location = Some Resume.Location::{
        , city = Some "Lille"
        , postalCode = Some "59000"
        , region = Some "Nord"
        , countryCode = Some "FR"
        }
      , profiles = Some
        [
          Resume.Profile::{
          , network = Some "Mastodon"
          , username = Some "gaelreyrol@mamot.fr"
          , url = Some "https://mamot.fr/@GaelReyrol"
          }
        , Resume.Profile::{
          , network = Some "Github"
          , username = Some "gaelreyrol"
          , url = Some "https://github.com/gaelreyrol"
          }
        , Resume.Profile::{
          , network = Some "Linkedin"
          , username = Some "gaelreyrol"
          , url = Some "https://linkedin.com/in/gaelreyrol"
          }
        ]
      }
    , work = Some
      [ Resume.Work::{
        , name = Some "KaraFun Group"
        , description = Some
            "KaraFun Group édite des sites et applications majeures autour de la musique instrumentale et du karaoké."
        , url = Some "https://www.karafun-group.com"
        , position = Some "Développeur Backend PHP"
        , summary = Some
            "Maintenir et améliorer les services et APIs de l'ensemble du groupe."
        , highlights = Some
          [ "Intégration d'un modèle d'abonnement multi-plateforme"
          , "Création d'un client Electron en remplacement d'une application legacy"
          ]
        , skills = Some
          [ "PHP"
          , "MySQL"
          , "Vue.js"
          , "TypeScript"
          , "Electron"
          ]
        , location = Some "Lille, France"
        , startDate = Some "2021-08"
        , endDate = Some "2023-01"
        , salaries = Some
          [ Resume.Salary::{ amount = 3200, startDate = Some "2022-08" } // monthly
          ]
        },
        Resume.Work::{
        , name = Some "Clever Cloud"
        , description = Some
            "Clever Cloud is an IT Automation company focused on developer productivity and hosting quality."
        , url = Some "https://www.clever-cloud.com"
        , position = Some "Ingénieur Support"
        , summary = Some
            "Contribuer à l'amélioration de la productivité des développeurs et de la qualité des environnements d'exécution"
        , highlights = Some
          [ "Responsable support de niveau 1"
          , "Construction d'un outil d'analyse et de rapport d'activité de l'équipe support"
          , "Maintenance et amélioration de la documentation externe & interne et contribuer"
          , "Développement d'outils externe et interne (CLI, Provider Terraform, SDK)"
          ]
        , skills = Some
          [ "Golang"
          , "Node.js"
          , "Express"
          , "Knex.js"
          , "PostgreSQL"
          , "Terraform"
          , "Apache Pulsar"
          , "Elasticsearch"
          , "Kibana"
          , "Wireguard"
          , "Jenkins"
          , "Nginx"
          , "Apache HTTP"
          , "Sozu"
          , "HAProxy"
          ]
        , location = Some "Lille, France"
        , startDate = Some "2021-03"
        , endDate = Some "2022-07"
        , salaries = Some
          [ Resume.Salary::{ amount = 2350, startDate = Some "2021-03" } // monthly
          , Resume.Salary::{ amount = 2750, startDate = Some "2021-07" } // monthly
          ]
        }
      , Resume.Work::{
        , name = Some "Dans Ma Culotte"
        , description = Some
            "Dans Ma Culotte démocratise auprès de tout·e·s l'accès à une large variété de produits menstruels sains et responsables."
        , url = Some "https://dansmaculotte.com"
        , position = Some "Responsable du développement Web"
        , summary = Some "Création d'une plateforme digitale de vente"
        , highlights = Some
          [ "Création de la boutique en ligne, de son interface logistique, du suivi de commandes, de la facturation et de la plateforme de gestion de contenu"
          , "Mise en place de l'amélioration et du déploiement des livrables"
          , "Surveillance et amélioration des performances liées au SEO"
          , "Organisation et management de l'équipe de développement en relation avec le PO via la méthodologie Agile (Scrum)"
          ]
        , skills = Some
          [ "DDD"
          , "TDD"
          , "Laravel"
          , "Eloquent"
          , "PHPUnit"
          , "PostgreSQL"
          , "Redis"
          , "RabbitMQ"
          , "S3"
          , "Vue.js"
          , "PostCSS"
          , "TailwindCSS"
          , "Webpack"
          , "Storybook"
          , "Lighthouse"
          , "Jest"
          , "Cypress"
          , "Percy"
          , "Gitlab CI"
          , "Clever Cloud"
          , "Cloudflare"
          , "Sentry"
          ]
        , location = Some "Caen, France"
        , startDate = Some "2018-10"
        , endDate = Some "2021-02"
        , salaries = Some
          [ Resume.Salary::{ amount = 2250, startDate = Some "2018-10" } // monthly
          , Resume.Salary::{ amount = 2600, startDate = Some "2020-07" } // monthly
          ]
        }
      , Resume.Work::{
        , name = Some "SoyHuCe"
        , description = Some
            "Conseil, accompagnement en transformation digitale, laboratoire R&D en algorithmie et datascience, déploiement d'architectures et édition de logiciels."
        , url = Some "https://soyhuce.fr"
        , position = Some "Développeur Fullstack & DevOps"
        , summary = Some
            "Contribuer à la création et à l'amélioration des outils à disposition des collaborateurs pour développer et déployer les services"
        , highlights = Some
          [ "Mise en place de l'infratructure interne et externe des services délivrés"
          , "Développement d'une plateforme Big Data type Lambda"
          ]
        , skills = Some
          [ "Jenkins"
          , "Docker"
          , "Kubernetes"
          , "Traefik"
          , "Nginx"
          , "Apache HTTP"
          , "Grafana"
          , "Prometheus"
          , "Amazon Web Service"
          , "Cloudflare"
          , "Terraform"
          , "Ansible"
          , "Molecule"
          , "Testinfra"
          , "Vagrant"
          , "Vault"
          , "ESXi"
          , "Apache Mesos"
          , "Marathon"
          , "Kafka"
          , "Spark"
          , "Golang"
          , "Gorilla"
          , "Gorm"
          , "MySQL"
          , "PostgreSQL"
          , "React"
          , "Redux"
          , "Vue.js"
          , "Nuxt.js"
          , "Sass"
          , "BEM"
          , "Webpack"
          ]
        , location = Some "Caen, France"
        , startDate = Some "2016-01"
        , endDate = Some "2018-10"
        , salaries = Some
          [ Resume.Salary::{ amount = 1950, startDate = Some "2016-01" } // monthly
          , Resume.Salary::{ amount = 2050, startDate = Some "2017-10" } // monthly
          , Resume.Salary::{ amount = 2400, startDate = Some "2018-05" } // monthly
          ]
        }
      , Resume.Work::{
        , name = Some "École Brassart"
        , description = Some
            "L'école Brassart est une école privée française d'arts graphiques"
        , url = Some "https://www.brassart.fr/campus/ecole-caen"
        , position = Some "Formateur Web"
        , summary = Some
            "Formation sur la spécialité Web pour les élèves de 2ème année"
        , location = Some "Caen, France"
        , startDate = Some "2016-01"
        , endDate = Some "2016-12"
        }
      , Resume.Work::{
        , name = Some "Makeidea"
        , description = Some
            "Plateforme de partage de modèle 3D à imprimer. RIP"
        , position = Some "Foundateur"
        , summary = Some "Gestion et développement du projet"
        , skills = Some
          [ "Golang"
          , "Beego"
          , "AngularJS"
          , "OSG.JS"
          , "MySQL"
          , "Google App Engine"
          , "Google Cloud Storage"
          ]
        , location = Some "Caen, France"
        , startDate = Some "2016-01"
        , endDate = Some "2016-12"
        }
      ]
    , education = Some
      [ Resume.Education::{
        , institution = Some "École 42 - Paris"
        , area = Some "Programmation informatique"
        , studyType = Some "Degree"
        , courses = Some [ "Algorithmie", "Web", "Unix" ]
        , startDate = Some "2013-09"
        , endDate = Some "2016-01"
        , url = Some "https://42.fr"
        }
      ]
    , skills = Some
      [ Resume.Skill::{
        , name = Some "Backend"
        , keywords = Some
          [ "Laravel"
          , "Eloquent"
          , "Symfony"
          , "Doctrine"
          , "Golang"
          , "Beego"
          , "Revel"
          , "Gorilla"
          , "Gorm"
          , "Node.js"
          , "Express"
          , "Knex.js"
          ]
        }
      , Resume.Skill::{
        , name = Some "Frontend"
        , keywords = Some
          [ "Nuxt.js"
          , "Vue.js"
          , "Webpack"
          , "PostCSS"
          , "Tailwindcss"
          , "Storybook"
          , "Lighthouse"
          ]
        }
      , Resume.Skill::{
        , name = Some "Testing"
        , keywords = Some [ "Phpunit", "Jest", "Cypress", "Percy", "Molecule" ]
        }
      , Resume.Skill::{
        , name = Some "Database"
        , keywords = Some [ "PostgreSQL", "MySQL", "Redis" ]
        }
      , Resume.Skill::{
        , name = Some "Message Queue"
        , keywords = Some [ "Kafka", "RabbitMQ", "Apache Pulsar" ]
        }
      , Resume.Skill::{ name = Some "Storage", keywords = Some [ "S3", "FTP" ] }
      , Resume.Skill::{
        , name = Some "Ops"
        , keywords = Some
          [ "Terraform"
          , "Ansible"
          , "Packer"
          , "Vagrant"
          , "Docker"
          , "Apache Mesos"
          , "Nomad"
          , "Kubernetes"
          , "Consul"
          , "Prometheus"
          , "Grafana"
          , "Vault"
          , "Wireguard"
          , "Elasticsearch"
          , "Kibana"
          ]
        }
      , Resume.Skill::{
        , name = Some "Reverse Proxy"
        , keywords = Some [ "Traefik", "Nginx", "Apache", "Sozu", "HAProxy" ]
        }
      , Resume.Skill::{
        , name = Some "Cloud"
        , keywords = Some
          [ "Clever Cloud", "Cloudflare", "AWS", "Google App Engine" ]
        }
      , Resume.Skill::{
        , name = Some "Automation"
        , keywords = Some [ "Github Actions", "Gitlab CI", "Jenkins" ]
        }
      ]
    , languages = Some
      [ Resume.Language::{ language = Some "Français", fluency = Some "Native" }
      , Resume.Language::{ language = Some "English", fluency = Some "Fluent" }
      ]
    , interests = Some
      [ Resume.Interest::{ name = Some "Roller Derby" }
      , Resume.Interest::{ name = Some "Harmonica" }
      , Resume.Interest::{ name = Some "Littérature & Bande dessinées" }
      , Resume.Interest::{ name = Some "Humanitaire" }
      ]
    }
