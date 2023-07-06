package models

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"os"

	"github.com/beego/beego/v2/client/orm"
	"github.com/beego/beego/v2/core/config"
	_ "github.com/go-sql-driver/mysql"
)

var ormer orm.Ormer
var Categories = make(map[string]int)
var Tags = make(map[string]int)

func init() {
	// orm.Debug = true
	orm.RegisterModel(new(Blog))
	user, _ := config.String("dbuser")
	pass, _ := config.String("dbpass")
	host, _ := config.String("dbhost")
	port, _ := config.String("dbport")
	dbname, _ := config.String("dbname")
	orm.RegisterDataBase("default", "mysql",
		fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8",
			user, pass, host, port, dbname,
		))
	orm.RunSyncdb("default", false, true)
	ormer = orm.NewOrm()

	// load blogs from data.json and insert all blogs
	// loadData()
}

func loadData() []Blog {
	if _, err := os.Stat("data.json"); err != nil {
		log.Fatal(err)
	}

	bytes, err := ioutil.ReadFile("data.json")
	if err != nil {
		log.Fatal(err)
	}

	blogs := []Blog{}
	if err := json.Unmarshal(bytes, &blogs); err != nil {
		log.Fatal(err)
	}

	err = InsertMulti(blogs)
	if err != nil {
		log.Fatal("err:", err)
	}

	for _, b := range blogs {
		Categories[b.Category]++
		Tags[b.Tag]++
	}

	return blogs
}
