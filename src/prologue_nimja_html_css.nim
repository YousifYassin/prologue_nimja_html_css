import prologue
import prologue/middlewares/staticfile
import views/[home, basic_layout, meta, typography, link_images]

when isMainModule:
  let settings = newSettings(port = Port(3000), debug = true)
  let app = (var the_app = newApp(settings); the_app.use(staticFileMiddleware("img")); the_app)
  # var app = newApp(settings)
  # app.use(staticFileMiddleware("imgs"))  
  app.addRoute("/", home_page)
  app.addRoute("/basic", basic)
  app.addRoute("/meta", meta_page)
  app.addRoute("/typography", typography_page)
  app.addRoute("/links_images", link_images_page)
  app.run()
