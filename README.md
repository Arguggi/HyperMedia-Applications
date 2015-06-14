# HyperMedia Application Project

The website can be previewed [here] (https://hyper.arguggi.co.uk/).
We didn't use any pre-made template, everything is simple html + js with php on the server to query the database.

# Database access

For security reasons the variables needed to connect to the database are provided by
apache on my server, so that nothing is stored on git/github. In order to use your credentials
change the WEBSITE/php/\*.php files, in particular this line:
`$mysqli = new mysqli(getenv("mysqli_default_host"), getenv("mysqli_default_user"),getenv("mysqli_default_pw"),getenv("mysqli_default_table"));`
