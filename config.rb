###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

helpers do
  def top_run_button
    <<-EOB
    <div>
      <div class='snippet-actions'>
      	<a class='snippet-action-run' href='javascript:void(0);'>Jalankan</a>
      </div>
    EOB
  end

  def bottom_run_button
    <<-EOB
      <div class='snippet-actions'>
      	<a class='snippet-action-run' href='javascript:void(0);'>Jalankan</a>
      </div>
    </div>
    EOB
  end
end

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  # activate :relative_assets
  activate :image_optim

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote = "git@github.com:catcyborg/mengenal-ruby.git"
  deploy.branch = "gh-pages"
end

activate :gzip
activate :minify_html

ignore 'vs-bash.html.erb'
ignore 'snippets/*'
page "/sitemap.xml", :layout => false

set :markdown_engine, :redcarpet
activate :syntax, linenos: 'inline', anchorlinenos: true, linenostart: 1
set :markdown, :tables => true, :autolink => true, :gh_blockcode => true, :fenced_code_blocks => true
