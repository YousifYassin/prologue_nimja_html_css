import nimja/parser
import prologue
from strUtils import parseInt

type
  GenderType = enum
    Male, Female

  Person = ref object of RootObj
    name: string
    email: string
    message: string
    gender: GenderType
    age: range[0..150]

proc newPerson(the_name, the_email, the_message, the_gender, the_age: string): Person =
  var
     genderVal: GenderType
     ageVal: range[0..150]

  block get_gender:
    case the_gender:
    of "Male", "male": genderVal = GenderType.Male
    of "Female", "female": genderVal = GenderType.Female
    else: genderVal = GenderType.Female

  block get_age:
    try:
      ageVal = parseInt(the_age)
    except ValueError:
      echo "get_age error section 1"
      ageVal = 0
    except:
      echo "get_age error section 2"
      ageVal = 0

  let person = Person(name: the_name, email: the_email, message: the_message, gender: genderVal, age: ageVal)
  person

proc form*(ctx: Context) {.async.} =
  proc render(): string =
    let title = "Forms & Input"
    compileTemplateFile(path = "../templates/forms_input.html", baseDir = getScriptDir())

  case ctx.request.reqMethod
  of HttpGet:
    echo "This is GET section"
  of HttpPost:
    echo "This is POST section"
    let
      formFunc = proc(info: string): string =
        ctx.getFormParams(info)
    try:
      let person = newPerson(formFunc"person_name", formFunc("person_email"), formFunc("person_message"), formFunc("person_gender"), formFunc("person_age"))
      echo person.repr

    except KeyError:
      echo getCurrentExceptionMsg()
      quit "\nKey Error"

    for (K, V) in ctx.request.formParams.data.mpairs():
      echo "The key :" & K
      echo "This value :" & V.body


  else:
    quit "Odd request"

  resp render()
