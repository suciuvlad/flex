# Prepare Flex

VERSION = '0.1.4'

# Merge and minify javascript files
`jammit`

# Create folder structure
`mkdir public/src public/src/javascripts public/src/stylesheets`

# Merge and minify css files
# `compass scss/flex.scss public/src/stylesheets/flex.min.css --precision 10 --style compressed`

`compass compile`

# Copy stylesheets
`cp stylesheets/flex.css public/src/stylesheets/flex.css`
`rm -rf stylesheets`

# Copy javascript files
`cp public/assets/flex.js public/src/javascripts/flex.min.js`

# Copy assets(images)
`cp -R images public/src`

# Copy template
`cp template.html public/src`

# update the docs too
`cp -R images docs`
`cp public/src/stylesheets/flex.css docs/stylesheets/flex.min.css`
`cp public/src/javascripts/flex.min.js docs/javascripts/flex.min.js`

# we include docs in the zip file
`cp -R docs public`

`cd public && zip -r ../flex-#{VERSION}.zip docs src`

`rm -rf public`
