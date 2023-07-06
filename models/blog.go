package models

import (
	"time"
)

type Blog struct {
	Slug     string `orm:"pk"`
	Title    string
	Body     string `orm:"type(text)"`
	Date     string
	Author   string
	Image    string
	Category string
	Tag      string
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
	b := &Blog{Slug: slug}
	err := ormer.Read(b)
	if err != nil {
		return nil
	}
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
