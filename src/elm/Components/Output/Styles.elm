module Components.Output.Styles exposing (..)

import Css exposing (..)
import Css.Namespace exposing (..)
import Css.Elements exposing (..)
import Components.Output.Classes as Classes exposing (Classes(..))
import Shared.Constants as Constants
import Shared.Colors as Colors


shimmerGradient : String
shimmerGradient =
    "linear-gradient(to right, rgba(255, 255, 255, 0) 20%, rgba(255, 255, 255, 0.9) 50%, rgba(255,255,255,0) 80%) "


styles : Stylesheet
styles =
    (stylesheet << namespace "components_output_")
        [ (.) Iframe
            [ width (pct 100)
            , height (pct 100)
            , border zero
            ]
        , (.) Overlay
            [ width (pct 100)
            , height (pct 100)
            , position relative
            , backgroundColor (hex Colors.mediumGray)
            , displayFlex
            , property "align-items" "center"
            , flexDirection column
            , color (hex Colors.white)
            , padding (px 16)
            , paddingTop (px 300)
            ]
        , (.) OverlayTitle
            [ property "font-family" "Leckerli One"
            , fontSize (px 48)
            , marginBottom (px 16)
            ]
        , (.) OverlaySubtitle
            [ fontSize (px 24)
            , textAlign center
            ]
        , (.) ErrorsContainer
            [ padding (px 16)
            , width (pct 100)
            , backgroundColor (hex Colors.mediumGray)
            , height (pct 100)
            , overflowY auto
            ]
        , (.) ErrorItem
            [ padding (px 16)
            , backgroundColor (hex Colors.darkGray)
            , color (hex Colors.white)
            , marginBottom (px 2)
            , firstChild
                [ borderTopRightRadius (px 3)
                , borderTopLeftRadius (px 3)
                ]
            , lastChild
                [ borderBottomRightRadius (px 3)
                , borderBottomLeftRadius (px 3)
                ]
            , descendants
                [ code
                    [ fontWeight (int 700)
                    , backgroundColor (rgba 255 255 255 0.4)
                    , padding2 (px 2) (px 6)
                    , borderRadius (px 3)
                    , display inlineBlock
                    , lineHeight (int 1)
                    ]
                ]
            ]
        , (.) ErrorItemHeader
            [ displayFlex
            , property "justify-content" "space-between"
            , fontSize (px 10)
            , color (hex Colors.lightGray)
            , lineHeight (px 10)
            , textTransform uppercase
            , paddingBottom (px 16)
            ]
        , (.) ErrorItemName
            []
        , (.) ErrorItemLocation
            []
        , (.) ErrorItemOverview
            [ fontSize (px 16)
            , fontWeight (int 700)
            , paddingBottom (px 16)
            , lineHeight (px 16)
            ]
        , (.) ErrorItemDetails
            [ fontSize (px 14)
            , lineHeight (px 14)
            ]
        ]
