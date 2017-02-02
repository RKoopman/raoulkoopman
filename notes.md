ToDos:

7) jQuery
  - interactive Post#index menu bar
        - drop-menu
  - Home page image mouseover


10) Best approach to launching site?
  - Google domain
  - Heroku

** 13) Make email info private before uploading to GitHub and/or launching

14) Hyperlink front/backend for projects to GitHub.
  - opens in new tab

16) Reorganize stylesheets.
________________________________________________________________________________

- hidden file for email info
#application.rb
  ENV.update YAML.load(File.read(File.expand_path('../email_info.yml', __FILE__)))

________________________________________________________________________________
User Pages:
  + Contact#new
  - Contact#create
  + Post#index
  + Post#show
  + Session#new
  + StaticPages#home
  + StaticPages#about

Admin Pages:
  + Admin#edit
  + Admin#index
  - Admin#new
  + Admin#show
  + Categories#edit
  + Categories#new
  - Post#new
  - Post#edit
