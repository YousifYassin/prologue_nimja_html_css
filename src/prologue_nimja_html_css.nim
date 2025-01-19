import prologue
import views/home.nim

when isMainModule:
  let settings = newSettings(port = Port(3000), debug = true)
  let app = newApp(settings)
  app.get("/", home_page)
  app.run()
