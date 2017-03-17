module Types exposing (..)
import Login.Types as Login
import Material

type Msg 
    = Increase
    | Decrease
    | Reset
    | Mdl (Material.Msg Msg)
    | LoginMsg (Login.Msg)


type alias Model =
    { count : Int
    , login : Login.Model
    , mdl: Material.Model
    }
