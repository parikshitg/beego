package controllers

import (
	"github.com/parikshitg/beego/models"

	beego "github.com/beego/beego/v2/server/web"
)

type ListController struct {
	beego.Controller
}

func (c *ListController) Get() {
	c.TplName = "pages/bloglist.tpl"
	c.Data["blogs"] = models.ReadAll()
	c.Data["title"] = "Blog List"
	c.Data["uri"] = "Blog"
}
