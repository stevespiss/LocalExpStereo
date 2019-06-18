project('maxflow', 'cpp')

maxflow_version = '3.04'

sys = build_machine.system()
cc  = meson.get_compiler('cpp') 

inc = include_directories('.')
install_headers = ['graph.h']
sources = ['graph.cpp', 'maxflow.cpp']

install_headers( install_headers )

maxflow_lib = library('maxflow', 
    sources, 
    install_headers, 
    include_directories : inc,
    install : true )

maxflow_dep = declare_dependency( 
    include_directories : inc,
    link_with : maxflow_lib )

