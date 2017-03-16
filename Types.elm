module Types exposing (..)
import Login.Types as Login

type Msg 
    = Increase
    | Decrease
    | Reset
    | LoginMsg (Login.Msg)


type alias Model =
    { count : Int
    , login : Login.Model
    }
