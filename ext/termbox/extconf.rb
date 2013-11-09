require 'mkmf'
extension_name = 'termbox'


have_header('termbox.h')
find_library('termbox', nil)

dir_config(extension_name)
create_makefile(extension_name)
