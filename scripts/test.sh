code="curl -s -o /dev/null -w "%{http_code}" http://drone.emmas.me.uk"
result="$(eval $code)"
success="200"

if [ "$result" == "$success" ];then
	exit 0
else
	exit 69
fi
