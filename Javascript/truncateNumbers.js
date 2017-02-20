function truncate(x){
	return x.replace(/.(?=.{4})/g, "*");
}