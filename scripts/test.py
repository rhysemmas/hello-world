import sys
import requests as req

resp = req.get ('http://localhost:4000')
print(resp.status_code)

if int(resp.status_code) != 200:
	sys.exit(69)
else:
	sys.exit(0)
