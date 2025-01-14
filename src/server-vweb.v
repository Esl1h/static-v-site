module main

import vweb

struct App {
	vweb.Context
}

fn main() {
	app := App{}
	vweb.run(app, 8080)
}

@['/index']
pub fn (mut app App) index() vweb.Result {
	return app.text('Hello world from vweb!')
}
//access the endpoint on http://localhost:8080/


fn (mut app App) test() vweb.Result {
    return app.text('Hello world test path from vweb!')
}
//access the endpoint on http://localhost:8080/test

fn (mut app App) page() vweb.Result {
	message := 'Hello, world from page Vweb!'
    return $vweb.html()
}
//access the endpoint on http://localhost:8080/page
