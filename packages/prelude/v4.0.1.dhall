let Registry = ../../v1/Registry.dhall

in  Registry.Package::{
    , name = "prelude"
    , license = Registry.License.BSD-3-Clause
    , repository = Some
        ( Registry.Repo.GitHub
            { owner = "purescript"
            , repo = "purescript-prelude"
            , version = "v4.0.1"
            }
        )
    , targets = toMap
        { src = Registry.Target::{
          , sources = [ "src/**/*.purs" ]
          , dependencies = [] : Registry.Dependencies
          }
        }
    }
