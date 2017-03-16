module View exposing (view)

import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (href, class, style)
import Types exposing (..)
import Login.View

view : Model -> Html Msg
view model =
    div
        [ style [ ( "padding", "2rem" ) ] ]
        [ text ("Current count: " ++ toString model.count)
        , button [ onClick Increase ] [ text "Increment" ]
        , button [ onClick Decrease ] [ text "Decrement" ]
        , Html.map LoginMsg (Login.View.view model.login)
        ]
