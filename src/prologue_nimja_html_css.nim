import prologue
import prologue/middlewares/staticfile
import views/[home, basic_layout, meta, typography, link_images, list,
    forms_input, inline_block, id_classes, entities, html5_semantics]
import css_views/[css_basic, selectors, fonts, colors, border_background, box, float_align]

when isMainModule:
  let
    settings = newSettings(port = Port(3000), debug = true)
    app = (var the_app = newApp(settings); the_app.use(staticFileMiddleware(
        "src/img", "src/css")); the_app)

  block HTML_Route:
    app.addRoute("/", home_page)
    app.addRoute("/basic", basic)
    app.addRoute("/meta", meta_page)
    app.addRoute("/typography", typography_page)
    app.addRoute("/links_images", link_images_page)
    app.addRoute("/lists_tables", list_table, HttpGet)
    app.addRoute("/forms", form, HttpGet)
    app.addRoute("/forms", form, HttpPost)
    app.addRoute("/inline_block", inlines_blocks, HttpGet)
    app.addRoute("/id_class", class_id_fn, HttpGet)
    app.addRoute("/id_class.html", class_id_fn, HttpGet)
    app.addRoute("/entities", entities_fn, HttpGet)
    app.addRoute("/entities.html", entities_fn, HttpGet)
    app.addRoute("/semantics", semantics_fn, HttpGet)
    app.addRoute("/semantics.html", semantics_fn, HttpGet)

  block CSS_Route:
    app.addRoute("/basic_css", basic_css_fn, HttpGet)
    app.addRoute("/basic_css.html", basic_css_fn, HttpGet)
    app.addRoute("/selectors", selector_fn, HttpGet)
    app.addRoute("/selectors.html", selector_fn, HttpGet)
    app.addRoute("/fonts", fonts_fn, HttpGet)
    app.addRoute("/fonts.html", fonts_fn, HttpGet)
    app.addRoute("/colors", colors_fn, HttpGet)
    app.addRoute("/colors.html", colors_fn, HttpGet)
    app.addRoute("/border", border_bg_fn, HttpGet)
    app.addRoute("/border.html", border_bg_fn, HttpGet)
    app.addRoute("/box_model",box_fn, HttpGet)
    app.addRoute("/box_model.html",box_fn, HttpGet)
    app.addRoute("/float_align", float_fn, HttpGet)
    app.addRoute("/float_align.html", float_fn, HttpGet)

  app.run()
