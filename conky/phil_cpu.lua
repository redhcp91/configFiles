-- vim: ts=4 sw=4 noet ai cindent syntax=lua
conky.config = {
    alignment = 'bottom_right',
    background = true,
    border_width = 0,
	color0 = '#999999',
	color1 = '#cccccc',
	color2 = '#ff0000',
	color3 = '#005500',
	color4 = '#0000ff',
	color5 = '#ffcc00',
	color6 = '#ccff00',
	color7 = '#0099cc',
	color8 = '#cc6600',
	color9 = '#0061a3',
	diskio_avg_samples = 2,
	double_buffer = true,
    font = 'Hack:size=11.5',
    gap_x = 1350,
    gap_y = 100,
	--minimum_width = 500,
	if_up_strictness = 'link',
    net_avg_samples = 4,
    own_window = true,
	own_window_argb_visual = true,
	own_window_argb_value = 64,
    own_window_type = 'normal',
    own_window_transparent = true,
	--own_window_hints = 'undecorated,sticky,skip_taskbar,skip_pager,below',
    own_window_hints = 'skip_taskbar,skip_pager',
	update_interval = 1.5,
    use_spacer = 'none',
    use_xft = true,
	--update_interval_on_battery = 1,
    --cpu_avg_samples = 2,
	--default_color = 'white',
	--default_bar_height = 6,
	--default_bar_width = 0,
	--default_gauge_height = 25,
	--default_gauge_width = 40,
	--default_graph_height = 25,
	--default_graph_width = ,
    --default_outline_color = 'white',
    --default_shade_color = 'white',
	--disable_auto_reload = true,
	--display = ,
	xinerama_head = 2,
    --draw_borders = false,
    --draw_graph_borders = true,
    --draw_outline = false,
    --draw_shades = false,
    --extra_newline = false,
	--http_refresh = false,
	--max_text_width = 0,
	--max_user_text = 16384,
	--maximum_width = ,
    --minimum_height = 5,
	--minimum_width = ,
    --no_buffers = true,
	--nvidia_display = ,
    --out_to_console = false,
	--out_to_http = false,
	--out_to_ncurses = false,
    --out_to_stderr = false,
	--out_to_x = true,
	--override_utf8_locale = true,
    --own_window_class = 'Conky',
	--own_window_colour = '#000000'
	--own_window_title = 'conky0 (<hostname>)'
	--own_window_transparent = false,
	--short_units = true,
    --show_graph_scale = false,
    --show_graph_range = false,
    --stippled_borders = 0,
	--text_buffer_size = 256,
	--top_cpu_separate = true,
	--top_name_verbose = true,
	--top_name_width = 15,
	--total_run_times = 0,
}

--[[
${scroll 16 $nodename - $sysname $kernel on $machine | }
${color grey}Frequency (in MHz):$color $freq
${color grey}Frequency (in GHz):$color $freq_g
${color grey}MEM Usage:$color $memperc% ${membar 8 00ff00 ff0000}
$memwithbuffers $memdirty $memeasyfree $memfree

${if $memperc > 10}\
${alignr 40}${color #ff0000}RAM: $memperc% = $mem / $memmax
${else}\
${alignr 40}${color #00ff00}RAM: $memperc% = $mem / $memmax
${endif}\
--]]
conky.text = [[
${color grey}Uptime: $color$uptime \
$hr
${color #ffff00}CPU: \
${goto 50}$cpu%\
${goto 90}${freq}mHz\
${goto 180}${color #ff3300}${acpitemp}℃\
${alignr 40}${color #00ff00}RAM: $memperc% = $mem / $memmax
${color #88cc00}${cpugraph 60,250 00ff00 ff0000} \
${color #88cc00}${memgraph 60,250 00ff00 ff0000}
${color6}CPU 1: $color1${cpu cpu1}% ${goto 100}${cpubar cpu1 12,150}  \
${color6}CPU 5: ${alignr 5}$color1${cpu cpu5}% ${cpubar cpu5 12,150}
${color6}CPU 2: $color1${cpu cpu2}% ${goto 100}${cpubar cpu2 12,150}  \
${color6}CPU 6: ${alignr 5}$color1${cpu cpu6}% ${cpubar cpu6 12,150}
${color6}CPU 3: $color1${cpu cpu3}% ${goto 100}${cpubar cpu3 12,150}  \
${color6}CPU 7: ${alignr 5}$color1${cpu cpu7}% ${cpubar cpu7 12,150}
${color6}CPU 4: $color1${cpu cpu4}% ${goto 100}${cpubar cpu4 12,150}  \
${color6}CPU 8: ${alignr 5}$color1${cpu cpu8}% ${cpubar cpu8 12,150}
${color #88cc00}Swap Usage: $swapperc% = $swap/$swapmax \
${color #88cc00} ${swapbar 4 00ff00 ff0000}
\
]]
