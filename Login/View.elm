module Login.View exposing (view)

import Html exposing (..)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (href, class, style, type_, placeholder)
import Login.Types exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ input [ type_ "input", placeholder "Name", onInput SetName ] []
        , input [ type_ "password", placeholder "password", onInput SetPassword ] []
        , text model.name
        ]
