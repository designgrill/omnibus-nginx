name "ngx_pagespeed"
default_version "1.7.30.4-beta"

source :url => "https://github.com/pagespeed/ngx_pagespeed/archive/release-#{version}.zip", :md5 => "d31ff96f44445b0c7d147d9c3eb8ae68"

dependency "psol"

relative_path "#{name}-release-#{version}"

build do
	block do
		FileUtils.cp_r(File.join(source_dir, "psol"),project_dir)
	end
end



