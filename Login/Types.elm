module Login.Types exposing (..)

type Msg 
    = SetName String
    | SetPassword String

type alias Model = 
    { name: String
    , password: String
    }

