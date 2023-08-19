module "github_setup" {
  source = "git::ssh://git@github.com/ingenube/github_setup.git?ref=v1.1.1"

  owner = "ingenube"
  repositories = {
    "asdf-python1" = {
      description = "This is the asdf-python1 repo"
      branch_protection_rules = {
        "main" = {
          "reviewers" = 2
        }
      }
    }
    "asdf-python2" = {
      description = "This is the asdf-python2 repo"
      branch_protection_rules = {
        "main" = {
          "reviewers" = 2
        }
      }
    }
    "asdf-java1" = {
      description = "This is the asdf-java1 repo"
      branch_protection_rules = {
        "main" = {
          "up_to_date" = true
        }
      }
    }
    "asdf-java2" = {
      description = "This is the asdf-java2 repo"
      branch_protection_rules = {
        "main" = {
          "up_to_date" = true
        }
      }
    }
  }

  teams = {
    "python-team" = {
      description = "This is the Python team"
      members = {
        "lenigo1" = "member"
        "lenigo2" = "member"
      }
      repo_permissions = {
        "asdf-python1" = "push"
        "asdf-python2" = "push"
        "asdf-java1"   = "push"
        "asdf-java2"   = "push"
      }
    },
    "java-team" = {
      description = "This is the Java team"
      members = {
        "lenigo1" = "member"
        "lngodoy" = "member"
      }
      repo_permissions = {
        "asdf-java1" = "push"
        "asdf-java2" = "push"
      }
    },
    "c-team" = {
      description = "This is the C team"
      members     = {}
      repo_permissions = {
        "asdf-java1" = "push"
        "asdf-java2" = "push"
      }
    },
    "ruby-team" = {
      description = "This is the Ruby team"
      members = {
        "lngodoy"  = "member"
        "lgodoy96" = "member"
      }
      repo_permissions = {}
    }
  }

  external_users = {
    "lngistea" = {
      repo_permissions = {
        "asdf-java1" = "pull"
        "asdf-java2" = "pull"
      }
    }
  }

}