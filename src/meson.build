switch_wallpaper_vala_sources = [
  'main.vala',
  'window.vala',
]

switch_wallpaper_vala_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
]

gnome = import('gnome')

switch_wallpaper_vala_sources += gnome.compile_resources('switch_wallpaper_vala-resources',
  'switch_wallpaper_vala.gresource.xml',
  c_name: 'switch_wallpaper_vala'
)

executable('switch-wallpaper-vala', switch_wallpaper_vala_sources,
  vala_args: '--target-glib=2.50',  dependencies: switch_wallpaper_vala_deps,
  install: true,
)
