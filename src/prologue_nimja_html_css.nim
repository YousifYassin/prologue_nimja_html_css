import prologue
import views/[home, basic_layout]

when isMainModule:
  let settings = newSettings(port = Port(3000), debug = true)
  let app = newApp(settings)
  app.get("/", home_page)
  app.get("/basic", basic)
  app.run()
