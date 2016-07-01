import Html exposing (div)
import Html.App
import Html.Attributes exposing (contenteditable, property, style)
import Html.Events exposing (on)
import Json.Decode exposing (at, string)
import Json.Encode

main =
  Html.App.beginnerProgram
  { model = ""
  , update = update
  , view = view
  }

type Msg = Input String

update (Input newModel) model =
  newModel

view model =
  div []
    [ div
      [ contenteditable True
      , on "input" (Json.Decode.map Input innerHtmlDecoder)
      , "height" => "200px"
      , style [("width", "100%"), ("border", "1px solid green")]
      ] []
    , div [ property "innerHTML" (Json.Encode.string model) ] []
    ]

innerHtmlDecoder =
  at ["target", "innerHTML"] string
