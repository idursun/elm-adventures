module State exposing (init, update)

import Types exposing (..)
import Login.State
import Material


init : Model
init =
    { count = 0
    , login = Login.State.init
    , mdl = Material.model
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increase ->
            ( { model | count = model.count + 1 }, Cmd.none )

        Decrease ->
            ( { model | count = model.count - 1 }, Cmd.none )

        Reset ->
            ( { model | count = 0 }, Cmd.none )

        LoginMsg msg_ ->
            let
                ( m, cmd ) =
                    Login.State.update msg_ model.login
            in
                ( { model | login = m }, Cmd.none )
        Mdl msg_ -> Material.update Mdl msg_ model

