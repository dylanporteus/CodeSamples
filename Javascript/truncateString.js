function truncate(x){
	return x.replace(/.(?=.{4})/g, "*");   //This function will "hide" all but the last four characters of the input string.
}