package main

import (
	log "github.com/parikshitg/beego/logs"
	"github.com/parikshitg/beego/models"
	_ "github.com/parikshitg/beego/routers"

	"github.com/beego/beego/v2/core/logs"
	beego "github.com/beego/beego/v2/server/web"
)

func main() {
	log.L = logs.NewLogger(10000)
	err := log.L.SetLogger("console")
	if err != nil {
		panic(err)
	}
	beego.AddFuncMap("getBlog", models.Read)
	beego.Run()
}
