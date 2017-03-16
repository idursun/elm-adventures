module Login.State exposing (init, update) 

import Login.Types exposing (..)


init : Model
init =
    Model "" ""


update : Msg -> Model -> ( Model, Cmd Msg )
update action model =
    case action of
        SetName name ->
            ( { model | name = name }, Cmd.none )

        SetPassword password ->
            ( { model | password = password }, Cmd.none )
