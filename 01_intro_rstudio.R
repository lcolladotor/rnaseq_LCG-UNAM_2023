## ----install_rsthemes, eval = FALSE----
## remotes::install_github(c(
##     "gadenbuie/rsthemes"
## ))
## remotes::install_cran("suncalc")
## rsthemes::install_rsthemes(include_base16 = TRUE)


## ----r_profile, eval = FALSE----
## usethis::edit_r_profile()
## 
## ## From https://www.garrickadenbuie.com/project/rsthemes/
## if (interactive() && requireNamespace("rsthemes", quietly = TRUE)) {
##     # Set preferred themes if not handled elsewhere..
##     rsthemes::set_theme_light("Solarized Light {rsthemes}") # light theme
##     rsthemes::set_theme_dark("base16 Monokai {rsthemes}") # dark theme
##     rsthemes::set_theme_favorite(c(
##         "Solarized Light {rsthemes}",
##         "base16 Monokai {rsthemes}",
##         "One Dark {rsthemes}"
##     ))
## 
##     # Whenever the R session restarts inside RStudio...
##     setHook("rstudio.sessionInit", function(isNewSession) {
##         # Automatically choose the correct theme based on time of day
##         ## Used rsthemes::geolocate() once
##         rsthemes::use_theme_auto(lat = 39.2891, lon = -76.5583)
##     }, action = "append")
## }
## 
## ## https://blog.rstudio.com/2013/06/10/rstudio-cran-mirror/
## options(repos = c(CRAN = "https://cloud.r-project.org"))


## ----proj, eval = FALSE-----
## usethis::create_project("~/rnaseq_2023_notas")


## ----create_setup, eval = FALSE----
## ## Start a setup file
## usethis::use_r("01-notas.R")


## ----create_01-visualizar-mtcars, eval = FALSE----
## ## Creemos el archivo R/02-visualizar-mtcars.R
## usethis::use_r("02-visualizar-mtcars.R")


## ----vis_mtcars, eval = FALSE----
## library("sessioninfo")
## library("here")
## library("ggplot2")
## 
## ## Hello world
## print("Soy Leo")
## 
## ## Directorios
## dir_plots <- here::here("figuras")
## dir_rdata <- here::here("processed-data")
## 
## ## Crear directorio para las figuras y archivos
## dir.create(dir_plots, showWarnings = FALSE)
## dir.create(dir_rdata, showWarnings = FALSE)
## 
## ## Hacer una imagen de ejemplo
## pdf(file.path(dir_plots, "mtcars_gear_vs_mpg.pdf"),
##     useDingbats = FALSE
## )
## ggplot(mtcars, aes(group = gear, y = mpg)) +
##     geom_boxplot()
## dev.off()
## 
## ## Para reproducir mi c??digo
## options(width = 120)
## sessioninfo::session_info()


## ----use_git_init, eval = FALSE----
## ## Para poder conectar tu compu con GitHub
## usethis::create_github_token() ## Abrir?? una p??gina web, escoje un nombre ??nico
## ## y luego da click en el bot??n verde al final. Despu??s copia el token
## ## (son 40 caracteres)


## ----gitcreds_set, eval = FALSE----
## gitcreds::gitcreds_set() ## Ojo, copia el token, no tu password de git!
## ## Si no, terminaras en la situaci??n descrita en
## ## https://github.com/r-lib/usethis/issues/1347


## ----edit_r_envir, eval = FALSE----
## usethis::edit_r_environ()


## ----use_git_cont_parte1, eval = FALSE----
## ## Configura tu usuario de GitHub
## usethis::edit_git_config()


## ----use_git_cont_parte2, eval = FALSE----
## ## Para inicializar el repositorio de Git
## usethis::use_git()
## 
## ## Para conectar tu repositorio local de Git con los servidores de GitHub
## usethis::use_github()


## git clone https://github.com/lcolladotor/rnaseq_LCG-UNAM_2023.git

## 

## ## Si tienen su SSH key configurarda pueden usar

## ## Info sobre SSH keys de GitHub:

## ## https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

## git clone git@github.com:lcolladotor/rnaseq_LCG-UNAM_2023.git


## ----clone_repo, eval = FALSE----
## ## Opci??n m??s nueva:
## library("gert")
## repo <- git_clone(
##     "https://github.com/lcolladotor/rnaseq_LCG-UNAM_2023",
##     "~/rnaseq_LCG-UNAM_2023"
## )
## setwd(repo)
## 
## ## Otra opci??n:
## git2r::clone(
##     "https://github.com/lcolladotor/rnaseq_LCG-UNAM_2023",
##     "~/rnaseq_LCG-UNAM_2023"
## )


## ----postcards_proj, eval = FALSE----
## ## Creen el RStudio project
## usethis::create_project("Su_Usuario.github.io")
## 
## ## Configura Git y GitHub
## usethis::use_git()
## usethis::use_github()


## ----postcards_create, eval = FALSE----
## ## Solo uno de estos, de acurdo al templado que m??s les gust??
## postcards::create_postcard(template = "jolla")
## postcards::create_postcard(template = "jolla-blue")
## postcards::create_postcard(template = "trestles")
## postcards::create_postcard(template = "onofre")

