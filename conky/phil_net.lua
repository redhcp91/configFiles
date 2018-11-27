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
${color grey}Networking: \
$hr
${if_up tun0}\
 ${color #009999}TUN0\
 ${color #00cc88}${addrs tun0} \
 ${color #009999}External IP:\
 ${color #00cc88}${execi 10 /home/chris/scripts/external-ip2.sh}
 ${color3}total:${totaldown tun0} \
 ${goto 180}${color3}${downspeed tun0}\
 ${goto 245}↓${color2}↑ ${upspeed tun0}\
 ${goto 350}${color2}total:${totalup tun0}
${color3}${downspeedgraph tun0 32,250 00ffff 00ff00} \
${color3}${downspeedgraph tun0 32,250 00ffff 00ff00}
${endif}\
${if_up eno1}\
 ${color #009999}EXTERNAL IP:\
 ${execp dig +short myip.opendns.com @resolver1.opendns.com}
 ${color #009999}INTERNAL IP:\
 ${color #00cc88}${addrs eno1}
 ${color3}total:${totaldown eno1} \
 ${goto 180}${color3}${downspeed eno1}\
 ${goto 245}↓${color2}↑ ${upspeed eno1}\
 ${goto 350}${color2}total:${totalup eno1}
${color3}${downspeedgraph eno1 32,250 00ffff 00ff00} \
${color3}${downspeedgraph eno1 32,250 00ffff 00ff00}
${endif}\
${if_up ethusb0}\
 ${color #009999}ETHUSB0\
 ${color #00cc88}${addrs ethusb0}
 ${color3}total:${totaldown ethusb0} \
 ${goto 180}${color3}${downspeed ethusb0}\
 ${goto 245}↓${color2}↑ ${upspeed ethusb0}\
 ${goto 350}${color2}total:${totalup ethusb0}
${color3}${downspeedgraph ethusb0 32,250 00ffff 00ff00} \
${color3}${downspeedgraph ethusb0 32,250 00ffff 00ff00}
${endif}\
${if_up usb0}\
 ${color #009999}USB0\
 ${color #00cc88}${addrs usb0}
 ${color3}total:${totaldown usb0} \
 ${goto 180}${color3}${downspeed usb0}\
 ${goto 245}↓${color2}↑ ${upspeed usb0}\
 ${goto 350}${color2}total:${totalup usb0}
${color3}${downspeedgraph usb0 32,250 00ffff 00ff00} \
${color3}${downspeedgraph usb0 32,250 00ffff 00ff00}
${endif}\
${if_up wlan0}\
 ${color #009999}WLAN0\
 ${color #00cc88}${addr wlan0}\
 ${color #6699ff}${alignr}AP MAC addr: ${color #9966ff}${wireless_ap wlan0}
${color0} channel: ${color7}${wireless_channel wlan0}  \
${color0}freq: ${color7}${wireless_freq wlan0}  \
${color0}mode: ${color7}${wireless_mode wlan0}  \
${color0}essid: ${color8}${wireless_essid wlan0}
 ${color3}total:${totaldown wlan0} \
 ${goto 180}${color3}${downspeed wlan0}\
 ${goto 245}↓${color2}↑ ${upspeed wlan0}\
 ${goto 350}${color2}total:${totalup wlan0}
${color3}${downspeedgraph wlan0 32,250 00ffff 00ff00} \
${color3}${downspeedgraph wlan0 32,250 00ffff 00ff00}
${endif}\
]]
