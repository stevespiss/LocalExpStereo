project('LocalExpStereo', 'cpp', default_options : ['cpp_std=c++17'])

cpp = meson.get_compiler('cpp')
libgomp = cpp.find_library('gomp')

extra_args = cpp.get_supported_arguments(['-Wall', '-Wextra'])
add_project_arguments(extra_args, language: 'cpp')

openmpLinkerArgs = ['-fopenmp']
filesytemLinkerArgs = ['-lstdc++fs']

maxflow_proj = subproject('maxflow')
maxflow_dep = maxflow_proj.get_variable('maxflow_dep')

opencv_dep = dependency('opencv4')
inc = include_directories('LocalExpansionStereo')
src = ['LocalExpansionStereo/main.cpp']

executable('LocalExpansionStereo', include_directories : inc, sources : src, cpp_args : [openmpLinkerArgs], dependencies : [maxflow_dep, opencv_dep, libgomp], link_args : [openmpLinkerArgs, filesytemLinkerArgs])
