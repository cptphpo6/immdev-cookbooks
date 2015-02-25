include_recipe "apache2"

apache_site "default" do
  enable false
end

apache_module "proxy" do
  enable true
end

apache_module "proxy_http" do
  enable true
end

web_app 'immweb' do
  template 'site.conf.erb'
  docroot node['phpapp']['docroot']
  server_name node['phpapp']['server_name']
  img_url node['phpapp']['img_url']
  sound_url node['phpapp']['sound_url']
  deploy_env node['phpapp']['deploy_env']
end