name "ngx_pagespeed"
default_version "v1.7.30.4-beta"

source git: "https://github.com/pagespeed/ngx_pagespeed"

dependency "psol"

build do
	FileUtils.cp_r(File.join(source_dir, "psol"),project_dir)
end



