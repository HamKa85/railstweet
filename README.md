# Application qui tweet sur son compte via une app Rails

## Lien heroku
https://frozen-ocean-82611.herokuapp.com/


* Créé un service SendTweet :

 initialize, qui permet de faire passer le string en paramètre
 perform, qui exécute la tâche
 log_in_to_twitter qui permet de se login sur twitter avec tes credentials
 send_tweet qui envoie un tweet

* doc pour send tweet : https://github.com/sferik/twitter


* Le front

Fais un controller Home avec une méthode index. 

La méthode index sera la root de ton application. 

Dans le view index, mets-y un formulaire qui a juste un text-field et de quoi le soumettre.

La méthode index va récupérer le text-field de ton formulaire et le passer dans le service SendTweet.



** Bonus :

2.1. Clés en dev & test

Pour le dev et les tests, tu peux utiliser la gem dotenv qui est pas mal du tout pour bien gérer ses clés d'API sans avoir à s'en préoccuper.

📈 Bon plan du jour 🎁 : j'ai fait une cheat-sheet sur Dotenv que tu peux utiliser pour te familiariser avec la gem.
2.2. Clés en production

Et bien figure-toi que ce n'est pas si compliqué que ça de balancer les clés d'APIs sur Heroku. Heroku a ce qu'on appelle des config vars : tu lui donnes le nom de ta variable (comme tu les appèlerais dans le fichier .env, la valeur de la variable (la clé) puis le tour est joué 😇

Pour configurer les clés, tu peux le faire via CLI, ou même via l'interface de Heroku. La doc de Heroku explique comment faire cela.
