# Usuarios:
# lenigo1 - usuario1
# lenigo2 - usuario2
# lngodoy - usuario3
# lgodoy96 - usuario4
# lngistea - usuario5

equipos = {
  python-team = {
    members      = ["lenigo1", "lenigo2"]
    repositories = ["asdf-python1", "asdf-python2"]
    protections = {
      main = { reviewers = 2 }
      dev  = {}
    }
  }
  java-team = {
    members      = ["lenigo1", "lngodoy"]
    repositories = ["asdf-java1", "asdf-java2"]
  }
  c-team = {
    repositories = ["c1", "c2"]
    protections = {
      main = { up_to_date = true }
    }
    external_users = {
      lngistea    = "read"
      python-team = "write"
    }
  }
  ruby-team = {
    members      = ["lngodoy", "lgodoy96"]
    repositories = []
    protections = {
      main = { reviewers = 2 }
      dev  = {}
    }
  }
}

owner = "ingenube"