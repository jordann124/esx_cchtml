resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page "nui/index.html"

files {
	"nui/index.html",
	"nui/img.png",
	"nui/ui.js"
}

client_script {
	'click.lua',
	'client.lua'
}

server_script {
  '@mysql-async/lib/MySQL.lua',
  'server.lua'
}
