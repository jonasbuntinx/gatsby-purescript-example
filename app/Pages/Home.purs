module Pages.Home (mkHome) where

import Prelude
import Effect (Effect)
import Pages.Navigation (mkNavigation)
import React.Basic.DOM as R
import React.Basic.Hooks as React

type Props
  = { header :: String }

mkHome :: Effect (React.ReactComponent Props)
mkHome = do
  navigation <- mkNavigation
  React.component "Home" \props -> React.do
    pure $ render { navigation } props
  where
  render slots props =
    R.div
      { className: "font-sans antialiased leading-normal tracking-wider bg-gray-200"
      , children:
        [ React.element slots.navigation {}
        , R.div
            { className: "max-w-5xl flex mx-auto my-12"
            , children:
              [ R.div
                  { className: "mr-1 text-gray-100 w-3/5 rounded-l-lg rounded-r-none shadow-2xl bg-gray-800 p-12 text-left"
                  , children:
                    [ R.h1
                        { className: "text-3xl font-bold"
                        , children:
                          [ R.text props.header
                          ]
                        }
                    , R.div
                        { className: "w-4/5 pt-3 border-b-2 border-teal-500"
                        }
                    , R.p
                        { className: "pt-4 text-sm"
                        , children:
                          [ R.text "Welcome to my Gatsby.js with Purescript Example!"
                          ]
                        }
                    ]
                  }
              , R.div
                  { className: "w-2/5"
                  , children:
                    [ R.img
                        { className: "shadow-2xl"
                        , src: "https://source.unsplash.com/g6e641CiHFQ"
                        }
                    ]
                  }
              ]
            }
        ]
      }
