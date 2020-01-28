module Pages.Navigation (mkNavigation) where

import Prelude
import Effect (Effect)
import Gatsby.Link as G
import React.Basic.DOM as R
import React.Basic.Hooks as React

mkNavigation :: Effect (React.ReactComponent {})
mkNavigation =
  React.component "Navigation" \props -> React.do
    pure $ render props
  where
  render props =
    R.nav
      { className: "text-gray-800 w-full flex items-center justify-between py-3 px-4"
      , children:
        [ R.div
            { className: "font-extrabold text-xl"
            , children:
              [ R.text "Gatsby.js with Purescript Example" ]
            }
        , R.ul
            { className: "flex-grow flex justify-end items-center"
            , children:
              [ R.li
                  { children:
                    [ G.link
                        { to: "/"
                        , children:
                          R.a
                            { className: "inline-block py-2 px-4 font-bold"
                            , children: [ R.text "Home" ]
                            }
                        }
                    ]
                  }
              , R.li
                  { children:
                    [ G.link
                        { to: "/about"
                        , children:
                          R.a
                            { className: "inline-block py-2 px-4 font-bold"
                            , children: [ R.text "About" ]
                            }
                        }
                    ]
                  }
              ]
            }
        ]
      }
