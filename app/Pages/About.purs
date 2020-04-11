module Pages.About (mkAbout) where

import Prelude
import Effect (Effect)
import Pages.Navigation (mkNavigation)
import React.Basic.DOM as R
import React.Basic.Hooks as React

mkAbout :: Effect (React.ReactComponent {})
mkAbout = do
  navigation <- mkNavigation
  React.component "About" \props -> React.do
    pure $ render { navigation } props
  where
  render slots props =
    React.fragment
      [ React.element slots.navigation {}
      , R.div
          { className: "max-w-5xl flex mx-auto my-12"
          , children:
              [ R.div
                  { className: "mr-1 text-gray-100 w-3/5 shadow-2xl bg-gray-800 p-12 text-left"
                  , children:
                      [ R.h1
                          { className: "text-3xl font-bold"
                          , children:
                              [ R.text "About"
                              ]
                          }
                      , R.div
                          { className: "w-4/5 pt-3 border-b-2 border-teal-500"
                          }
                      , R.h2
                          { className: "pt-4 font-bold"
                          , children:
                              [ R.text "PureScript"
                              , R.span
                                  { className: "ml-1 text-teal-500 font-extrabold"
                                  , children:
                                      [ R.text "::"
                                      ]
                                  }
                              ]
                          }
                      , R.p
                          { className: "pt-1 text-sm"
                          , children:
                              [ R.text "A small strongly typed programming language with expressive types that compiles to JavaScript, written in and inspired by Haskell."
                              ]
                          }
                      , R.h2
                          { className: "pt-4 font-bold"
                          , children:
                              [ R.text "Gatsby.js"
                              , R.span
                                  { className: "ml-1 text-teal-500 font-extrabold"
                                  , children:
                                      [ R.text "::"
                                      ]
                                  }
                              ]
                          }
                      , R.p
                          { className: "pt-1 text-sm"
                          , children:
                              [ R.text "Gatsby is a free and open source framework based on React that helps developers build blazing fast websites and apps."
                              ]
                          }
                      ]
                  }
              , R.div
                  { className: "w-2/5"
                  , children:
                      [ R.img
                          { className: "shadow-2xl"
                          , src: "https://source.unsplash.com/rS1GogPLVHk"
                          }
                      ]
                  }
              ]
          }
      ]
