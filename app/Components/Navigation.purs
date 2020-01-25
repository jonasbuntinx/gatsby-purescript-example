module Pages.Navigation (mkNavigation) where

import Prelude
import Effect (Effect)
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
        ]
      }
