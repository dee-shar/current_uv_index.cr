# current_uv_index.cr
Web-API for [currentuvindex.com](https://currentuvindex.com/) your trusted companion in helping you stay informed and protected against harmful ultraviolet (UV) radiation from the sun

## Example
```cr
require "./current_uv_index"

current_uv_index = CurrentUvIndex.new
current_uvi = current_uv_index.get_uvi(
	latitude="", longitude="")
puts current_uvi
```
