{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "gatsby-purescript-example"
, dependencies =
    [ "console"
    , "effect"
    , "prelude"
    , "psci-support"
    , "react-basic-hooks"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "app/**/*.purs"
    , "test/**/*.purs"
    ]
}
