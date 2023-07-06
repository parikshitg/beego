package controllers

import (
	"html/template"

	log "github.com/parikshitg/beego/logs"

	beego "github.com/beego/beego/v2/server/web"
)

type ContactController struct {
	beego.Controller
}

func (c *ContactController) Get() {
	c.TplName = "pages/contact.tpl"
	c.Data["uri"] = "Contact"
	c.Data["title"] = "Get in touch"
	c.Data["xsrfdata"] = template.HTML(c.XSRFFormHTML())
}

func (c *ContactController) Post() {
	c.CheckXSRFCookie()

	c.TplName = "pages/contact.tpl"

	c.Data["page"] = "Contact"
	c.Data["title"] = "Get in touch"

	// Contact form submission
	name := c.GetString("name")
	email := c.GetString("email")
	subject := c.GetString("subject")
	message := c.GetString("message")

	log.L.Info("name: %s", name)
	log.L.Info("email: %s", email)
	log.L.Info("subject: %s", subject)
	log.L.Info("message: %s", message)

	if name == "" || email == "" || subject == "" || message == "" {
		c.Data["error"] = "Fields can not be empty!"
	} else {
		c.Data["success"] = "Message sent successfully"
	}
}
