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
    font = 'Hack:size=10',
    gap_x = 1350,
    gap_y = 100,
	minimum_width = 500,
	if_up_strictness = 'link',
    net_avg_samples = 4,
    own_window = true,
	own_window_argb_visual = true,
	own_window_argb_value = 64,
    own_window_type = 'normal',
    own_window_transparent = true,
	--own_window_hints = 'undecorated,sticky,skip_taskbar,skip_pager,below',
    own_window_hints = 'skip_taskbar,skip_pager',
	update_interval = 0.5,
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
conky.text = [[
${color grey}Processes:$color $processes  \
${color grey}Running:$color $running_processes \
	${sysname} ${kernel}
\
${color yellow}Highest CPU         PID   CPU% | \
${color green}Highest MEM         PID   MEM%
${color0} ${top     name 1} ${top     pid 1} ${top     cpu 1} | \
${color0} ${top_mem name 1} ${top_mem pid 1} ${top_mem mem 1}
${color0} ${top     name 2} ${top     pid 2} ${top     cpu 2} | \
${color0} ${top_mem name 2} ${top_mem pid 2} ${top_mem mem 2}
${color0} ${top     name 3} ${top     pid 3} ${top     cpu 3} | \
${color0} ${top_mem name 3} ${top_mem pid 3} ${top_mem mem 3}
${color0} ${top     name 4} ${top     pid 4} ${top     cpu 4} | \
${color0} ${top_mem name 4} ${top_mem pid 4} ${top_mem mem 4}
${color0} ${top     name 5} ${top     pid 5} ${top     cpu 5} | \
${color0} ${top_mem name 5} ${top_mem pid 5} ${top_mem mem 5}
${color0} ${top     name 6} ${top     pid 6} ${top     cpu 6} | \
${color0} ${top_mem name 6} ${top_mem pid 6} ${top_mem mem 6}
${color0} ${top     name 7} ${top     pid 7} ${top     cpu 7} | \
${color0} ${top_mem name 7} ${top_mem pid 7} ${top_mem mem 7}
${color0} ${top     name 8} ${top     pid 8} ${top     cpu 8} | \
${color0} ${top_mem name 8} ${top_mem pid 8} ${top_mem mem 8}
${color0} ${top     name 9} ${top     pid 9} ${top     cpu 9} | \
${color0} ${top_mem name 9} ${top_mem pid 9} ${top_mem mem 9}
${color0}$hr
]]
