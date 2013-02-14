{ exec, spawn } = require 'child_process'
path = require 'path'
util = require 'util'

task 'build', 'build extension', (options) ->
	exec "coffee -bco build/ coffee/", (err, stdout, stderr) ->
		throw err          if err
		console.log stdout if stdout
		console.log stderr if stderr

task 'sbuild', 'build extension', (options) ->
	# sublime coffee plugin uses sbuild task
	invoke 'build'

task 'watch', 'watches for changes in source files', (options) ->
	coffee = spawn 'coffee', ['-wbco', 'build/', 'coffee/']

	coffee.stdout.on 'data', util.print
	coffee.stderr.on 'data', util.print
