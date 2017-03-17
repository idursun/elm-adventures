module View exposing (view)

import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (href, class, style)
import Types exposing (..)
import Login.View
import Material
import Material.Scheme
import Material.Options as Options exposing (css)
import Material.Layout as Layout
import Material.Color as Color


view : Model -> Html Msg
view model =
    Material.Scheme.top <|
        Layout.render Mdl
            model.mdl
            [ Layout.fixedHeader
            , Layout.fixedDrawer
            , Options.css "display" "flex !important"
            , Options.css "flex-direction" "row"
            , Options.css "align-items" "center"
            ]
            { header =
                [ Layout.row
                    [ Color.background <| Color.color Color.Grey Color.S100
                    , Color.text <| Color.color Color.Grey Color.S900
                    ]
                    [ Layout.title [] [ text "elm-mdl Dashboard Example" ]
                    , Layout.spacer
                    , Layout.navigation []
                        [text "Back"]
                    ]
                ]
            , drawer = []
            , tabs = ( [text "test", text "test2"], [] )
            , main =
                [ div
                    [ style [ ( "padding", "2rem" ) ] ]
                    [ text ("Current count: " ++ toString model.count)
                    , button [ onClick Increase ] [ text "Increment" ]
                    , button [ onClick Decrease ] [ text "Decrement" ]
                    , Html.map LoginMsg (Login.View.view model.login)
                    ]
                ]
            }
