package main

import (
	"github.com/parikshitg/beego/models"
	_ "github.com/parikshitg/beego/routers"
	"log"

	beego "github.com/beego/beego/v2/server/web"
)

func main() {
	log.SetFlags(log.Lshortfile)
	beego.AddFuncMap("getBlog", models.Read)
	beego.Run()
}
