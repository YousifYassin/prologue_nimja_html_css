import nimja/parser
import prologue

proc link_images_page*(ctx: Context) {.async.} =
  proc render(): string =
    let
      title = "links & images"
      link = "typography"
    compileTemplateFile(path = "../templates/links_images.html", baseDir = getScriptDir())

  resp render()
