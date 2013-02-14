{ exec, spawn } = require 'child_process'
path = require 'path'
util = require 'util'
cson = require 'cson'
fs = require 'fs'

#
# Generate manifest.json from manifest.cson (CoffeeScript JSON)
#
buildManifest = (notify = false) ->
	manifest = cson.parseFileSync 'manifest.cson'
	manifestJson = JSON.stringify manifest
	fs.writeFileSync 'build/manifest.json', manifestJson
	console.log "#{(new Date).toLocaleTimeString()} - built manifest" if notify

task 'build', 'build extension', (options) ->
	exec "coffee -bco build/ coffee/", (err, stdout, stderr) ->
		throw err          if err
		console.log stdout if stdout
		console.log stderr if stderr

	buildManifest()

task 'sbuild', 'build extension', (options) ->
	# sublime coffee plugin uses sbuild task
	invoke 'build'

task 'watch', 'watches for changes in source files', (options) ->
	coffee = spawn 'coffee', ['-wbco', 'build/', 'coffee/']

	coffee.stdout.on 'data', util.print
	coffee.stderr.on 'data', util.print

	buildManifest true

	# watch/update manifest
	fs.watch 'manifest.cson', (event) -> buildManifest true if event is 'change'
