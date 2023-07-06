package routers

import (
	"github.com/parikshitg/beego/controllers"

	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/blog", &controllers.ListController{})
	beego.Router("/blog/:slug", &controllers.BlogController{})
	beego.Router("/contact", &controllers.ContactController{})

	beego.SetStaticPath("/css", "static/css")
	beego.SetStaticPath("/js", "static/js")
	beego.SetStaticPath("/img", "static/img")
}
