package models

import (
	"log"
	"time"
)

type Blog struct {
	Slug     string    `json:"slug",orm:"pk"`
	Title    string    `json:"title",orm:"column(title)"`
	Body     string    `orm:"text:"`
	Date     string    `json:"column(date)",orm:"column(date)"`
	Author   string    `json:"column(author)",orm:"column(author)"`
	Image    string    `json:"column(image)",orm:"column(image)"`
	Category string    `json:"column(category)",orm:"column(category)"`
	Tag      string    `json:"column(tag)",orm:"column(tag)"`
	Created  time.Time `orm:"auto_now_add;type(datetime)"`
	Updated  time.Time `orm:"auto_now;type(datetime)"`
}

func Insert(blog *Blog) error {
	_, err := ormer.Insert(blog)
	return err
}

func InsertMulti(blogs []Blog) error {
	_, err := ormer.InsertMulti(100, blogs)
	return err
}

func Read(slug string) *Blog {
	log.Println(">>>>>>> READ():", slug)
	defer log.Println("<<<<<<< READ()")

	b := &Blog{Slug: slug}
	err := ormer.Read(b)
	if err != nil {
		log.Println("b err:", err)
		return nil
	}
	log.Println("blog b:", b)
	return b
}

func ReadAll() []Blog {
	qs := ormer.QueryTable("blog")
	blogs := []Blog{}
	_, err := qs.All(&blogs)
	if err != nil {
		return blogs
	}
	return blogs
}
