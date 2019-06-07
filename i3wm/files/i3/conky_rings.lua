--==============================================================================
--                            seamod_rings.lua
--
--  Date    : 05/02/2012
--  Author  : SeaJey
--  Version : v0.1
--  License : Distributed under the terms of GNU GPL version 2 or later
--
--  This version is a modification of lunatico_rings.lua wich is modification of conky_orange.lua 
--
--  conky_orange.lua:    http://gnome-look.org/content/show.php?content=137503&forumpage=0
--  lunatico_rings.lua:  http://gnome-look.org/content/show.php?content=142884
--==============================================================================

require 'cairo'

function define_graphs()
    thickness = screen_height / 64
    start_y = (screen_width / 10) + 50
    end_y = screen_height - (screen_width / 10) - 50
    start_x = (screen_width / 10) + 50
    end_x = screen_width - (screen_width / 10) - 50
    arc_base_radius = screen_width / 10

    --------------------------------------------------------------------------------
    --                                                                    gauge DATA
    gauge = {
        {
            name='cpu',
            arg='cpu0',
            max_value=100,
            x=start_x,
            y=start_y,
            graph_radius=arc_base_radius - ((thickness + 3)*1),
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,           graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,       graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,       graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,        hand_fg_alpha=1.0,
            txt_radius=150,
            txt_weight=0,                   txt_size=11.0,
            txt_fg_colour=0xEF5A00,         txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,         graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF,  graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,               caption_size=9.0,
            caption_fg_colour=0xFFFFFF,     caption_fg_alpha=0.3,
        },
        {
            name='cpu',                             arg='cpu1',
            max_value=100,
            x=start_x,                     y=start_y,
            graph_radius=arc_base_radius - ((thickness + 3)*2),
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,                   graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,               graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,               graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,                hand_fg_alpha=1.0,
            txt_radius=125,
            txt_weight=0,                           txt_size=1.0,
            txt_fg_colour=0xEF5A29,                 txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,                 graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF,          graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,                       caption_size=9.0,
            caption_fg_colour=0xFFFFFF,             caption_fg_alpha=0.3,
        },
        {
            name='cpu',                    arg='cpu2',
            max_value=100,
            x=start_x,                     y=start_y,
            graph_radius=arc_base_radius - ((thickness + 3)*3),
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=100,
            txt_weight=0,                  txt_size=1.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=9.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
        },
        {
            name='cpu',                    arg='cpu3',
            max_value=100,
            x=start_x,                     y=start_y,
            graph_radius=arc_base_radius - ((thickness + 3)*4),
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=75,
            txt_weight=0,                  txt_size=1.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=9.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
        },
        {
            name='cpu',                    arg='cpu4',
            max_value=100,
            x=start_x,                     y=start_y,
            graph_radius=arc_base_radius - ((thickness + 3)*5),
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=50,
            txt_weight=0,                  txt_size=1.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=9.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
        },
        {
            name='cpu',                    arg='cpu5',
            max_value=100,
            x=start_x,                     y=start_y,
            graph_radius=arc_base_radius - ((thickness + 3)*6),
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=4,
            txt_weight=0,                  txt_size=1.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=9.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
        },
        {
            name='cpu',                    arg='cpu6',
            max_value=100,
            x=start_x,                     y=start_y,
            graph_radius=arc_base_radius - ((thickness + 3)*7),
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=75,
            txt_weight=0,                  txt_size=1.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=9.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
        },
        {
            name='cpu',                    arg='cpu7',
            max_value=100,
            x=start_x,                     y=start_y,
            graph_radius=arc_base_radius - ((thickness + 3)*8),
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=50,
            txt_weight=0,                  txt_size=1.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=9.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
        },
        {
            name='memperc',
            arg='',
            max_value=100,
            inverted=true,
            x=start_x,
            y=end_y,
            graph_radius=screen_width / 10 - ((thickness + 3)*1),
            graph_thickness=thickness,
            graph_start_angle=0,
            graph_unit_angle=2.7,
            graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,
            graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,
            graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,
            hand_fg_alpha=1.0,
            txt_radius=42,
            txt_weight=0,
            txt_size=9.0,
            txt_fg_colour=0xEF5A29,
            txt_fg_alpha=0.0,
            graduation_radius=23,
            graduation_thickness=0,
            graduation_mark_thickness=2,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF,
            graduation_fg_alpha=0.5,
            caption='',
            caption_weight=1,
            caption_size=10.0,
            caption_fg_colour=0xFFFFFF,
            caption_fg_alpha=0.3,
        },
        {
            name='fs_used_perc',           arg='/',                     max_value=100,
            x=end_x,                        y=start_y,
            graph_radius=screen_width / 10 - ((thickness + 3)*1),              inverted=true,
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=64,
            txt_weight=0,                  txt_size=0.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,
            graduation_radius=23,
            graduation_thickness=0,        graduation_mark_thickness=2,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=20.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=1.0,
        },
        {
            name='fs_used_perc',           arg='/home',                    max_value=100,
            x=end_x,                        y=start_y,
            graph_radius=screen_width / 10 - ((thickness + 3)*2),
            inverted=true,
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=64,
            txt_weight=0,                  txt_size=0.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,
            graduation_radius=23,
            graduation_thickness=0,        graduation_mark_thickness=2,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=20.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=1.0,
        },
        {
            name='fs_used_perc',           arg='/backup',                  max_value=100,
            x=end_x,                        y=start_y,
            graph_radius=screen_width / 10 - ((thickness + 3)*3),
            inverted=true,
            graph_thickness=thickness,
            graph_start_angle=180,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=1.0,
            txt_radius=64,
            txt_weight=0,                  txt_size=0.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,
            graduation_radius=23,
            graduation_thickness=0,        graduation_mark_thickness=2,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=20.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=1.0,
        },
        {
            name='downspeedf',           arg='wlp2s0',                     max_value=100,
            x=end_x,                          y=end_y,
            graph_radius=screen_width / 10 - ((thickness + 3)*1),
            graph_thickness=thickness,
            graph_start_angle=0,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=0,
            txt_radius=64,
            txt_weight=0,                  txt_size=9.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=12.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
        },
        {
            name='upspeedf',           arg='wlp2s0',                     max_value=100,
            x=end_x,                          y=end_y,
            graph_radius=screen_width / 10 - ((thickness + 3)*2),
            graph_thickness=thickness,
            graph_start_angle=0,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=0,
            txt_radius=30,
            txt_weight=0,                  txt_size=9.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=12.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
        },
        {
            name='downspeedf',           arg='enp62s0u2u1u2c2',                     max_value=100,
            x=end_x,                          y=end_y,
            graph_radius=screen_width / 10 - ((thickness + 3)*3),
            graph_thickness=thickness,
            graph_start_angle=0,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=0,
            txt_radius=64,
            txt_weight=0,                  txt_size=9.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=12.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
        },
        {
            name='upspeedf',           arg='enp62s0u2u1u2c2',                     max_value=100,
            x=end_x,                          y=end_y,
            graph_radius=screen_width / 10 - ((thickness + 3)*4),
            graph_thickness=thickness,
            graph_start_angle=0,
            graph_unit_angle=2.7,          graph_unit_thickness=2.7,
            graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
            graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
            hand_fg_colour=0xEF5A29,       hand_fg_alpha=0,
            txt_radius=30,
            txt_weight=0,                  txt_size=9.0,
            txt_fg_colour=0xEF5A29,        txt_fg_alpha=0.0,
            graduation_radius=28,
            graduation_thickness=0,        graduation_mark_thickness=1,
            graduation_unit_angle=27,
            graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
            caption='',
            caption_weight=1,              caption_size=12.0,
            caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
        },
    }
end


-------------------------------------------------------------------------------
--                                                                 rgb_to_r_g_b
-- converts color in hexa to decimal
--
function rgb_to_r_g_b(colour, alpha)
    return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

-------------------------------------------------------------------------------
--                                                            angle_to_position
-- convert degree to rad and rotate (0 degree is top/north)
--
function angle_to_position(start_angle, current_angle)
    local pos = current_angle + start_angle
    return ( ( pos * (2 * math.pi / 360) ) - (math.pi / 2) )
end


-------------------------------------------------------------------------------
---
--- Use backward arcs if requested
---
function draw_arc(display, x, y, radius, start_angle, angle1, angle2, inverted)
    if inverted then
        cairo_arc_negative(display, x, y, radius, angle_to_position(start_angle, -angle1), angle_to_position(start_angle, -angle2))
    else
        cairo_arc(display, x, y, radius, angle_to_position(start_angle, angle1), angle_to_position(start_angle, angle2))
    end
end

-------------------------------------------------------------------------------
--                                                              draw_gauge_ring
-- displays gauges
--
function draw_gauge_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_start_angle = data['graph_start_angle']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']
    local hand_fg_colour, hand_fg_alpha = data['hand_fg_colour'], data['hand_fg_alpha']
    local graph_end_angle = (max_value * graph_unit_angle) % 360
    local inverted = data['inverted']

    -- background ring
    draw_arc(display, x, y, graph_radius, graph_start_angle, 0, graph_end_angle, inverted)
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    -- arc of value
    local val = value % (max_value + 1)
    local start_arc = 0
    local stop_arc = 0
    local i = 1
    while i <= val do
        start_arc = (graph_unit_angle * i) - graph_unit_thickness
        stop_arc = (graph_unit_angle * i)
        draw_arc(display, x, y, graph_radius, graph_start_angle, start_arc, stop_arc, inverted)
        cairo_set_source_rgba(display, rgb_to_r_g_b(graph_fg_colour, graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = start_arc

    -- hand
    start_arc = (graph_unit_angle * val) - (graph_unit_thickness * 2)
    stop_arc = (graph_unit_angle * val)
    draw_arc(display, x, y, graph_radius, graph_start_angle, start_arc, stop_arc, inverted)
    cairo_set_source_rgba(display, rgb_to_r_g_b(hand_fg_colour, hand_fg_alpha))
    cairo_stroke(display)

    -- graduations marks
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 and graduation_unit_angle > 0 then
        local nb_graduation = graph_end_angle / graduation_unit_angle
        local i = 0
        while i < nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            start_arc = (graduation_unit_angle * i) - (graduation_mark_thickness / 2)
            stop_arc = (graduation_unit_angle * i) + (graduation_mark_thickness / 2)
            draw_arc(display, x, y, graduation_radius, graph_start_angle, start_arc,stop_arc, inverted)
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end
end


-------------------------------------------------------------------------------
--                                                               go_gauge_rings
-- loads data and displays gauges
--
function go_gauge_rings(display)
    local function load_gauge_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_gauge_ring(display, data, value)
    end

    for i in pairs(gauge) do
        load_gauge_rings(display, gauge[i])
    end
end

-------------------------------------------------------------------------------
--                                                           draw_ring_captions
-- loads data and displays gauges
--
function draw_ring_captions(display)
    cairo_set_source_rgb(display,1,1,1)
    cairo_move_to(display, start_x + 5 , start_y + arc_base_radius - thickness)
    cairo_show_text(display, "CPU 0")
    cairo_move_to(display, start_x + 5 , start_y + arc_base_radius - (thickness + 3)*2)
    cairo_show_text(display, "CPU 1")
    cairo_move_to(display, start_x + 5 , start_y + arc_base_radius - (thickness + 3)*3)
    cairo_show_text(display, "CPU 2")
    cairo_move_to(display, start_x + 5 , start_y + arc_base_radius - (thickness + 3)*4)
    cairo_show_text(display, "CPU 3")
    cairo_move_to(display, start_x + 5 , start_y + arc_base_radius - (thickness + 3)*5)
    cairo_show_text(display, "CPU 4")
    cairo_move_to(display, start_x + 5 , start_y + arc_base_radius - (thickness + 3)*6)
    cairo_show_text(display, "CPU 5")
    cairo_move_to(display, start_x + 5 , start_y + arc_base_radius - (thickness + 3)*7)
    cairo_show_text(display, "CPU 6")
    cairo_move_to(display, start_x + 5 , start_y + arc_base_radius - (thickness + 3)*8)
    cairo_show_text(display, "CPU 7")

    cairo_move_to(display, end_x - 40 , start_y + arc_base_radius - thickness)
    cairo_show_text(display, "/")
    cairo_move_to(display, end_x - 40 , start_y + arc_base_radius - (thickness + 3)*2)
    cairo_show_text(display, "/home")
    cairo_move_to(display, end_x - 40 , start_y + arc_base_radius - (thickness + 3)*3)
    cairo_show_text(display, "/backup")

    cairo_move_to(display, end_x - 75 , end_y - arc_base_radius + thickness + 3)
    cairo_show_text(display, "WLAN Down")
    cairo_move_to(display, end_x - 75 , end_y - arc_base_radius + (thickness + 3)*2)
    cairo_show_text(display, "WLAN Up")
    cairo_move_to(display, end_x - 75 , end_y - arc_base_radius + (thickness + 3)*3)
    cairo_show_text(display, "LAN Down")
    cairo_move_to(display, end_x - 75 , end_y - arc_base_radius + (thickness + 3)*4)
    cairo_show_text(display, "LAN Up")

    cairo_new_path(display)

end

-------------------------------------------------------------------------------
--                                                           draw_ring_captions
-- loads data and displays gauges
--
function draw_box(display)
    cairo_set_source_rgb(display,1,1,1)
    cairo_stroke(display)
    cairo_move_to(display, start_x, start_y)
    cairo_line_to(display, end_x, start_y)
    cairo_line_to(display, end_x, start_y + arc_base_radius - (thickness + 3)* 4)
    cairo_move_to(display, end_x, start_y + arc_base_radius)
    cairo_line_to(display, end_x, end_y - arc_base_radius )
    cairo_move_to(display, end_x, end_y - arc_base_radius + (thickness + 3)* 5)
    cairo_line_to(display, end_x, end_y )
    cairo_line_to(display, start_x, end_y )
    cairo_line_to(display, start_x, end_y - arc_base_radius + (thickness + 3)* 2)
    cairo_move_to(display, start_x, end_y - arc_base_radius)
    cairo_line_to(display, start_x, start_y + arc_base_radius)
    cairo_move_to(display, start_x, start_y + arc_base_radius - (thickness + 3)*9)
    cairo_line_to(display, start_x, start_y )
    cairo_stroke_preserve(display)
    cairo_new_path(display)

end

-------------------------------------------------------------------------------
--                                                                         MAIN
function conky_main()
    if conky_window == nil then
        return
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local display = cairo_create(cs)
    local updates = conky_parse('${updates}')

    screen_width = conky_window.width
    screen_height = conky_window.height
    define_graphs()
    draw_ring_captions(display)
    draw_box(display)
    update_num = tonumber(updates)

    if update_num > 5 then
        go_gauge_rings(display)
    end

    cairo_surface_destroy(cs)
    cairo_destroy(display)

end

---
--- @TODO: CPU TOP, MEM TOP, Spotify current song etc, All Ip addresses, Calendar, Sound EQ on box bottom line downwards, Connected BT devices, WLAN status