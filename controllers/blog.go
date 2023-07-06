package controllers

import (
	"github.com/parikshitg/beego/models"

	beego "github.com/beego/beego/v2/server/web"
)

type BlogController struct {
	beego.Controller
}

func (c *BlogController) Get() {
	c.TplName = "pages/blog.tpl"
	slug := c.Ctx.Input.Param(":slug")
	c.Data["title"] = "Blog"
	c.Data["uri"] = "Blog"
	blog := models.Read(slug)
	if blog == nil {
		c.Data["error"] = "Blog not found!"
	} else {
		c.Data["blog"] = blog
	}
	// c.Data["categories"] = models.Categories
	// c.Data["tags"] = models.Tags
}
