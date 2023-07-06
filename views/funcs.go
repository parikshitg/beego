package views

import (
	"html/template"
	"strings"
)

// HTMLString renders HTML from string
func HTMLString(s string) interface{} {
	str := RemoveDiv(s)
	return template.HTML(str)
}

// RemoveDiv renders HTML from string
func RemoveDiv(s string) string {
	str := strings.TrimSpace(s)
	if strings.HasPrefix(str, "<div>") && strings.HasSuffix(str, "</div>") {
		str = str[5 : len(str)-6]
	}
	return str
}
