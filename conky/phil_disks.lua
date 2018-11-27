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
${color grey}DiskIO: $diskio \
$hr
 ${color #996633}/dev/sda\
 ${goto 160}${color #99ff00}${diskio_read sda}\
 ${goto 242}${color #99ff00}R|${color #ff3300}|W\
 ${goto 320}${color #ff3300}${diskio_write sda}
${color #88cc00}${diskiograph_read 30,250 00ff00 ffff00} \
${color #88cc00}${diskiograph_write 30,250 00ff00 ffff00}
\
$hr
${color grey}File systems: \
$hr
${color1}/      ${alignr 400} \
 ${color9}${fs_used /} /\
 ${color8}${fs_size /} ${color red}|\
 ${color3}${fs_bar 8 /}
${color1}ramdisk ${alignr 400} \
 ${color9}${fs_used /media/chris/ramdisk} /\
 ${color8}${fs_size /media/chris/ramdisk}${color red}|\
 ${color3}${fs_bar 8 /media/chris/ramdisk}
${color1}19ED9    ${alignr 400} \
 ${color9}${fs_used /media/chris/19ED92EB7E7E85E3} /\
 ${color8}${fs_size /media/chris/19ED92EB7E7E85E3} ${color red}|\
 ${color3}${fs_bar 8 /media/chris/19ED92EB7E7E85E3}
${color1}NVMe     ${alignr 400} \
 ${color9}${fs_used /media/chris/NVMe} /\
 ${color8}${fs_size /media/chris/NVMe} ${color red}|\
 ${color3}${fs_bar 8 /media/chris/NVMe}
${color1}WD-2     ${alignr 400} \
 ${color9}${fs_used /media/chris/WD-2[2.5TB]} /\
 ${color8}${fs_size /media/chris/WD-2[2.5TB]} ${color red}|\
 ${color3}${fs_bar 8 /media/chris/WD-2[2.5TB]}
${color1}VMs      ${alignr 400} \
 ${color9}${fs_used /media/chris/VMs} /\
 ${color8}${fs_size /media/chris/VMs} ${color red}|\
 ${color3}${fs_bar 8 /media/chris/VMs}
${color1}Extra    ${alignr 400} \
 ${color9}${fs_used /media/chris/ExtraStorage} /\
 ${color8}${fs_size /media/chris/ExtraStorage} ${color red}|\
 ${color3}${fs_bar 8 /media/chris/ExtraStorage}
${color1}3TB    ${alignr 400} \
 ${color9}${fs_used /media/chris/3TB_Storage} /\
 ${color8}${fs_size /media/chris/3TB_Storage} ${color red}|\
 ${color3}${fs_bar 8 /media/chris/3TB_Storage}
${color grey}$hr
$hr
]]
