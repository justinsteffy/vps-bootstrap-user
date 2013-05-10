csf_attrs    = node[:csf]
working_dir  = csf_attrs[:working_dir]
base_name    = "csf"
tar_file     = "#{base_name}.tgz"
csf_dir      = "#{working_dir}/#{base_name}"
install_file = "install.sh"

remote_file "#{working_dir}/#{tar_file}" do
  source "#{csf_attrs[:download_url]}/#{tar_file}"
end

execute "extract tar" do
  command "tar xfz #{tar_file}"
  cwd working_dir
  creates "#{working_dir}/#{base_name}"
end

execute "install" do
  command "./#{install_file}"
  cwd csf_dir
end

