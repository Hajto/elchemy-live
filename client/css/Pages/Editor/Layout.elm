module Pages.Editor.Layout exposing (..)

import Colors as Colors
import Css exposing (..)
import Css.Extra exposing (..)
import Css.File exposing (..)


notifications : UniqueClass
notifications =
    uniqueClass
        [ position absolute
        , bottom zero
        , right zero
        , width (px 400)
        , zIndex (int 10)
        , maxHeight (pct 100)
        , overflowY auto
        ]


sidebar : UniqueClass
sidebar =
    uniqueClass
        [ width (px 240)
        , height (pct 100)
        , position relative
        , zIndex (int 1)
        , Colors.boxShadow |> .right
        , paddingTop (px 10)
        ]


header : UniqueClass
header =
    uniqueClass
        [ height (px 70)
        ]


appContainer : UniqueClass
appContainer =
    uniqueClass
        [ width (pct 100)
        , height (pct 100)
        , displayFlex
        , position relative
        ]


workArea : UniqueClass
workArea =
    uniqueClass
        [ width <| calc (pct 100) minus (px 240)
        , height (pct 100)
        , displayFlex
        , position relative
        ]


mainContainer : UniqueClass
mainContainer =
    uniqueClass
        [ width (pct 100)
        , height <| calc (pct 100) minus (px 70)
        , displayFlex
        , position relative
        , zIndex (int 1)
        ]


appContainerInner : UniqueClass
appContainerInner =
    uniqueClass
        [ position relative
        , width (pct 100)
        , height (pct 100)
        , property "transition" "filter 0.3s 0.2s"
        ]


loadingRevision : UniqueClass
loadingRevision =
    uniqueClass
        [ filter <| blur (px 30)
        ]


editorsContainer : UniqueClass
editorsContainer =
    uniqueClass
        [ displayFlex
        , position relative
        , zIndex (int 0)
        , flexDirection column
        , height (pct 100)
        , width (pct 50)
        , overflow hidden
        ]


editorContainer : UniqueClass
editorContainer =
    uniqueClass
        [ height (pct 50)
        , position relative
        , paddingTop (px 10)
        , backgroundColor Colors.blueGrey
        , firstChild
            [ borderBottom3 (px 1) solid Colors.darkGray
            ]
        , lastChild
            [ borderTop3 (px 1) solid Colors.darkGray
            ]
        ]


editorContainerCollapse : UniqueClass
editorContainerCollapse =
    uniqueClass
        [ height (px 40)
        ]


editorContainerFull : UniqueClass
editorContainerFull =
    uniqueClass
        [ height <| calc (pct 100) minus (px 100)
        ]


outputAndLogsContainer : UniqueClass
outputAndLogsContainer =
    uniqueClass
        [ width (pct 50)
        , height (pct 100)
        , position relative
        , zIndex (int 1)
        , Colors.boxShadow |> .left
        , overflow hidden
        , displayFlex
        , flexDirection column
        ]


outputContainer : UniqueClass
outputContainer =
    uniqueClass
        [ height (pct 100)
        , flexShrink (int 1)
        , position relative
        , displayFlex
        ]


logsContainer : UniqueClass
logsContainer =
    uniqueClass
        [ position relative
        , displayFlex
        , borderTop3 (px 2) solid Colors.mediumGray
        ]


logsContainerCollapsed : UniqueClass
logsContainerCollapsed =
    uniqueClass
        [ height (px 40)
        , flexShrink (int 0)
        ]


notificationsContainer : UniqueClass
notificationsContainer =
    uniqueClass
        [ position absolute
        , right (px 16)
        , top (px 16)
        ]


outputResizeHandle : UniqueClass
outputResizeHandle =
    uniqueClass
        [ position absolute
        , width (px 6)
        , height (pct 100)
        , marginLeft (px -3)
        , cursor ewResize
        , zIndex (int 6)
        ]


verticalResizeHandle : UniqueClass
verticalResizeHandle =
    uniqueClass
        [ position absolute
        , height (px 6)
        , width (pct 100)
        , marginTop (px -3)
        , cursor nsResize
        , zIndex (int 6)
        ]


resizeNs : UniqueClass
resizeNs =
    uniqueClass
        [ descendants [ everything [ cursor nsResize |> important ] ]
        , cursor nsResize
        ]


resizeEw : UniqueClass
resizeEw =
    uniqueClass
        [ descendants [ everything [ cursor ewResize |> important ] ]
        , cursor ewResize
        ]


collapseButton : UniqueClass
collapseButton =
    uniqueClass
        [ top (px 8)
        , right (px 12)
        , position absolute
        , zIndex (int 2)
        ]
