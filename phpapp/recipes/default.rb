include_recipe "apache2"

apache_site "default" do
  enable false
end

web_app 'immweb' do
  template 'site.conf.erb'
  docroot node['phpapp']['docroot']
  server_name node['phpapp']['server_name']
  img_url node['phpapp']['img_url']
  sound_url node['phpapp']['sound_url']
  
end