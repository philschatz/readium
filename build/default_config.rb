# this file contains configurations for "build.rake". It should not
# be edited directly. Instead create a file in this same dir called
# "custom_config.rb" and override and variables in that file to customize
# the build process.
@config = {}

# the root directory of the project. all other paths should
# be specified as relative paths to this
@config[:proj_root_dir] = "/Users/matthew/ep/readium/readium"

# name of the directory that contains application scripts
@config[:scripts_dir] = "scripts"

# a list of scripts that should not be compressed durring the build
# process
@config[:exclude_scripts] = ["scripts/libs/plugins.js", "scripts/libs/web_plugins.js"]

# the directory to publish into, the name of this dir will be used by
# chrome as the name of the extension
@config[:publish_dir] = "readium"

# path the closure compiler jar
@config[:cc_jar_path] = "build/tools/closure-compiler-v1346.jar"

# list of files and dirs that need to be copied over to 
# the deploy dir as are with no processing
@config[:simple_copies] = ["background/**/*", "css/viewer_manifest.css", "css/library.css", "images/**/*", "manifest.json", "LICENSE", "_locales/**/*"]

# list of js libraries that need to be copied over (right now these are just simple copies)
@config[:js_libs] = ["lib/jquery-1.8.2.min.js", "lib/mathjax/**/*", "lib/pan_and_zoom.js", "scripts/libs/plugins.js", "scripts/libs/web_plugins.js", "lib/modernizr-2.5.3.min.js", "lib/2.5.3-crypto-sha1.js", "lib/zip.js", "lib/deflate.js", "lib/inflate.js"]

# html view files that need to have be processed (scripts) and copied over
@config[:html_files] = ["views/library.html", "views/viewer.html", "index.html", "viewer.html"]

# absolute path to chrome pem key
@config[:pem_path] = "/Users/matthew/ep/readium/packing-dir/readium.pem"

# relative path of where to put the extension's .crx file
@config[:crx_path] = "releases/readium.crx"

# the command used to start chrome when building the extension
@config[:chrome_command] = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"

# the regular expression used to identify the list of scripts that
# should be concatenated together into one file
@config[:scripts_regex] = /<!-- scripts concatenated and minified via build script -->((?:.|\s)*?)<!-- end scripts -->/

# when the website is generated, all files in the root outside of the root are deleted
# add files to this array to keep them. Basically stuff here is needed by the website but
# not by the crx
@config[:web_keeps] = ["CNAME", "releases", "epub_content", "docs"]

