cssmin: cinder/css/base.css cinder/css/bootstrap-custom.css cinder/css/cinder.css cinder/css/highlight.css
	uglifycss cinder/css/base.css > cinder/css/base.min.css
	uglifycss cinder/css/bootstrap-custom.css > cinder/css/bootstrap-custom.min.css
	uglifycss cinder/css/cinder.css > cinder/css/cinder.min.css
	uglifycss cinder/css/highlight.css > cinder/css/highlight.min.css

build:
	mkdocs build

serve:
	mkdocs serve
