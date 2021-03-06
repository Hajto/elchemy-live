module Pages.Editor.Header exposing (..)

import Colors
import Constants
import Css exposing (..)
import Css.Elements exposing (..)
import Css.File exposing (..)


header : UniqueClass
header =
    uniqueClass
        [ width (pct 100)
        , height (px 70)
        , backgroundImage Colors.elchemyGradient
        , displayFlex
        , alignItems center
        , justifyContent spaceBetween
        , Colors.boxShadow |> .bottom
        , position relative
        , zIndex (int 4)
        , padding2 zero (px 16)
        ]


rightSide : UniqueClass
rightSide =
    uniqueClass
        [ displayFlex
        , alignItems center
        ]


socialLink =
    uniqueClass
        [ width (px 20)
        , height (px 20)
        , color Colors.lightMediumGray
        , marginRight (px 8)
        , lastChild [ marginRight zero ]
        , hover [ color Colors.lightGray ]
        ]


leftSide : UniqueClass
leftSide =
    uniqueClass
        [ displayFlex
        , alignItems center
        ]


termsLabel =
    uniqueClass
        [ color Colors.lightGray
        , descendants
            [ a
                [ color Colors.pink
                , textDecoration underline
                ]
            ]
        ]


headerGroup : UniqueClass
headerGroup =
    uniqueClass
        [ displayFlex
        , alignItems center
        ]


logo : UniqueSvgClass
logo =
    uniqueSvgClass
        [ fill Colors.white
        , height (px 20)
        , width (px 10)
        , margin4 (px -5) (px 50) (px 10) (px 10)
        , fontFamilies [ "Helvetica Neue" ]
        , fontWeight (int 700)
        , fontSize (Css.em 1.7)
        , color (Colors.white)
        ]


button : UniqueClass
button =
    uniqueClass
        [ marginRight (px 16)
        , lastChild [ marginRight zero ]
        , displayFlex
        ]


copyLinkContainer =
    uniqueClass
        [ marginBottom (px 8)
        , lastChild [ marginBottom zero ]
        ]
