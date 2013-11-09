require 'mkmf'
extension_name = 'termbox'

have_header('termbox.h')
create_header

dir_config(extension_name)
create_makefile(extension_name)
