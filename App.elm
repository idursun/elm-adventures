module App exposing (main)

import Html exposing (Html)
import State
import View
import Types



main : Program Never Types.Model Types.Msg
main =
    Html.program
        { init = ( State.init, Cmd.none )
        , update = State.update
        , subscriptions = always Sub.none
        , view = View.view
        }
