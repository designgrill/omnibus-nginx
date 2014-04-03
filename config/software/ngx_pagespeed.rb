name "ngx_pagespeed"
default_version "1.7.30.4-beta"

source :url => "https://github.com/pagespeed/ngx_pagespeed/archive/release-#{version}.zip", :md5 => "91753de2262adf3cbf10e75375d1f738"

dependency "psol"

relative_path "#{name}-release-#{version}"

build do
	command "ln -sf #{name}-#{version} ../#{name}"

	block do
		FileUtils.cp_r(File.join(source_dir, "psol"),project_dir)
	end
end



