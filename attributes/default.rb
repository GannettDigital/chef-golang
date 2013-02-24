default["go"]["version"] = "1.0.3"
default["go"]["platform"] = "amd64"
default["go"]["filename"] = "go#{node["go"]["version"]}.#{node["os"]}-#{node["go"]["platform"]}.tar.gz"
default['go']['url'] = "http://go.googlecode.com/files/#{node["go"]["filename"]}"

