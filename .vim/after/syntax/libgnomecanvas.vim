" Vim syntax file
" Language: C libgnomecanvas extension (for version 2.20.1)
" Maintainer: David Nečas (Yeti) <yeti@physics.muni.cz>
" Last Change: 2009-01-04
" URL: http://physics.muni.cz/~yeti/vim/gtk-syntax.tar.gz
" Generated By: vim-syn-gen.py

syn keyword libgnomecanvasFunction gnome_canvas_bpath_get_type gnome_canvas_buf_ensure_buf gnome_canvas_c2w gnome_canvas_cap_gdk_to_art gnome_canvas_clipgroup_get_type gnome_canvas_ellipse_get_type gnome_canvas_get_butt_points gnome_canvas_get_center_scroll_region gnome_canvas_get_color gnome_canvas_get_color_pixel gnome_canvas_get_dither gnome_canvas_get_item_at gnome_canvas_get_miter_points gnome_canvas_get_scroll_offsets gnome_canvas_get_scroll_region gnome_canvas_get_type gnome_canvas_group_get_type gnome_canvas_item_affine_absolute gnome_canvas_item_affine_relative gnome_canvas_item_construct gnome_canvas_item_get_bounds gnome_canvas_item_get_type gnome_canvas_item_grab gnome_canvas_item_grab_focus gnome_canvas_item_hide gnome_canvas_item_i2c_affine gnome_canvas_item_i2w gnome_canvas_item_i2w_affine gnome_canvas_item_lower gnome_canvas_item_lower_to_bottom gnome_canvas_item_move gnome_canvas_item_new gnome_canvas_item_raise gnome_canvas_item_raise_to_top gnome_canvas_item_reparent gnome_canvas_item_request_redraw_svp gnome_canvas_item_request_update gnome_canvas_item_reset_bounds gnome_canvas_item_set gnome_canvas_item_set_valist gnome_canvas_item_show gnome_canvas_item_ungrab gnome_canvas_item_update_svp gnome_canvas_item_update_svp_clip gnome_canvas_item_w2i gnome_canvas_join_gdk_to_art gnome_canvas_line_get_type gnome_canvas_new gnome_canvas_new_aa gnome_canvas_path_def_all_closed gnome_canvas_path_def_all_open gnome_canvas_path_def_any_closed gnome_canvas_path_def_any_open gnome_canvas_path_def_bpath gnome_canvas_path_def_close_all gnome_canvas_path_def_closed_parts gnome_canvas_path_def_closepath gnome_canvas_path_def_closepath_current gnome_canvas_path_def_concat gnome_canvas_path_def_copy gnome_canvas_path_def_currentpoint gnome_canvas_path_def_curveto gnome_canvas_path_def_duplicate gnome_canvas_path_def_ensure_space gnome_canvas_path_def_finish gnome_canvas_path_def_first_bpath gnome_canvas_path_def_get_type gnome_canvas_path_def_has_currentpoint gnome_canvas_path_def_is_empty gnome_canvas_path_def_last_bpath gnome_canvas_path_def_length gnome_canvas_path_def_lineto gnome_canvas_path_def_lineto_moving gnome_canvas_path_def_moveto gnome_canvas_path_def_new gnome_canvas_path_def_new_from_bpath gnome_canvas_path_def_new_from_foreign_bpath gnome_canvas_path_def_new_from_static_bpath gnome_canvas_path_def_new_sized gnome_canvas_path_def_open_parts gnome_canvas_path_def_ref gnome_canvas_path_def_reset gnome_canvas_path_def_split gnome_canvas_path_def_unref gnome_canvas_pixbuf_get_type gnome_canvas_points_free gnome_canvas_points_get_type gnome_canvas_points_new gnome_canvas_points_ref gnome_canvas_polygon_get_type gnome_canvas_polygon_to_point gnome_canvas_re_get_type gnome_canvas_rect_get_type gnome_canvas_render_svp gnome_canvas_request_redraw gnome_canvas_request_redraw_uta gnome_canvas_rich_text_copy_clipboard gnome_canvas_rich_text_cut_clipboard gnome_canvas_rich_text_get_buffer gnome_canvas_rich_text_get_iter_at_location gnome_canvas_rich_text_get_iter_location gnome_canvas_rich_text_get_type gnome_canvas_rich_text_paste_clipboard gnome_canvas_rich_text_set_buffer gnome_canvas_root gnome_canvas_scroll_to gnome_canvas_set_center_scroll_region gnome_canvas_set_dither gnome_canvas_set_pixels_per_unit gnome_canvas_set_scroll_region gnome_canvas_set_stipple_origin gnome_canvas_shape_get_path_def gnome_canvas_shape_get_type gnome_canvas_shape_set_path_def gnome_canvas_text_get_type gnome_canvas_update_bbox gnome_canvas_update_now gnome_canvas_update_svp gnome_canvas_update_svp_clip gnome_canvas_w2c gnome_canvas_w2c_affine gnome_canvas_w2c_d gnome_canvas_widget_get_type gnome_canvas_window_to_world gnome_canvas_world_to_window
syn keyword libgnomecanvasStruct GnomeCanvas GnomeCanvasBpath GnomeCanvasBpathClass GnomeCanvasBpathPriv GnomeCanvasBuf GnomeCanvasClass GnomeCanvasClipgroup GnomeCanvasClipgroupClass GnomeCanvasEllipse GnomeCanvasEllipseClass GnomeCanvasGroup GnomeCanvasGroupClass GnomeCanvasItem GnomeCanvasItemClass GnomeCanvasLine GnomeCanvasLineClass GnomeCanvasPathDef GnomeCanvasPixbuf GnomeCanvasPixbufClass GnomeCanvasPoints GnomeCanvasPolygon GnomeCanvasPolygonClass GnomeCanvasRE GnomeCanvasREClass GnomeCanvasRect GnomeCanvasRectClass GnomeCanvasRichText GnomeCanvasRichTextClass GnomeCanvasRichTextPrivate GnomeCanvasShape GnomeCanvasShapeClass GnomeCanvasShapePriv GnomeCanvasText GnomeCanvasTextClass GnomeCanvasTextPrivate GnomeCanvasWidget GnomeCanvasWidgetClass
syn keyword libgnomecanvasMacro GNOME_CANVAS GNOME_CANVAS_BPATH GNOME_CANVAS_BPATH_CLASS GNOME_CANVAS_CLASS GNOME_CANVAS_CLIPGROUP GNOME_CANVAS_CLIPGROUP_CLASS GNOME_CANVAS_COLOR GNOME_CANVAS_COLOR_A GNOME_CANVAS_ELLIPSE GNOME_CANVAS_ELLIPSE_CLASS GNOME_CANVAS_ELLIPSE_GET_CLASS GNOME_CANVAS_GET_CLASS GNOME_CANVAS_GROUP GNOME_CANVAS_GROUP_CLASS GNOME_CANVAS_GROUP_GET_CLASS GNOME_CANVAS_ITEM GNOME_CANVAS_ITEM_CLASS GNOME_CANVAS_ITEM_GET_CLASS GNOME_CANVAS_LINE GNOME_CANVAS_LINE_CLASS GNOME_CANVAS_LINE_GET_CLASS GNOME_CANVAS_PIXBUF GNOME_CANVAS_PIXBUF_CLASS GNOME_CANVAS_PIXBUF_GET_CLASS GNOME_CANVAS_POLYGON GNOME_CANVAS_POLYGON_CLASS GNOME_CANVAS_POLYGON_GET_CLASS GNOME_CANVAS_RE GNOME_CANVAS_RECT GNOME_CANVAS_RECT_CLASS GNOME_CANVAS_RECT_GET_CLASS GNOME_CANVAS_RE_CLASS GNOME_CANVAS_RE_GET_CLASS GNOME_CANVAS_RICH_TEXT GNOME_CANVAS_RICH_TEXT_CLASS GNOME_CANVAS_RICH_TEXT_GET_CLASS GNOME_CANVAS_SHAPE GNOME_CANVAS_SHAPE_CLASS GNOME_CANVAS_TEXT GNOME_CANVAS_TEXT_CLASS GNOME_CANVAS_TEXT_GET_CLASS GNOME_CANVAS_WIDGET GNOME_CANVAS_WIDGET_CLASS GNOME_CANVAS_WIDGET_GET_CLASS GNOME_IS_CANVAS GNOME_IS_CANVAS_BPATH GNOME_IS_CANVAS_BPATH_CLASS GNOME_IS_CANVAS_CLASS GNOME_IS_CANVAS_CLIPGROUP GNOME_IS_CANVAS_CLIPGROUP_CLASS GNOME_IS_CANVAS_ELLIPSE GNOME_IS_CANVAS_ELLIPSE_CLASS GNOME_IS_CANVAS_GROUP GNOME_IS_CANVAS_GROUP_CLASS GNOME_IS_CANVAS_ITEM GNOME_IS_CANVAS_ITEM_CLASS GNOME_IS_CANVAS_LINE GNOME_IS_CANVAS_LINE_CLASS GNOME_IS_CANVAS_PIXBUF GNOME_IS_CANVAS_PIXBUF_CLASS GNOME_IS_CANVAS_POLYGON GNOME_IS_CANVAS_POLYGON_CLASS GNOME_IS_CANVAS_RE GNOME_IS_CANVAS_RECT GNOME_IS_CANVAS_RECT_CLASS GNOME_IS_CANVAS_RE_CLASS GNOME_IS_CANVAS_RICH_TEXT GNOME_IS_CANVAS_RICH_TEXT_CLASS GNOME_IS_CANVAS_SHAPE GNOME_IS_CANVAS_SHAPE_CLASS GNOME_IS_CANVAS_TEXT GNOME_IS_CANVAS_TEXT_CLASS GNOME_IS_CANVAS_WIDGET GNOME_IS_CANVAS_WIDGET_CLASS gnome_canvas_points_unref
syn keyword libgnomecanvasDefine GNOME_CANVAS_EPSILON GNOME_TYPE_CANVAS GNOME_TYPE_CANVAS_BPATH GNOME_TYPE_CANVAS_CLIPGROUP GNOME_TYPE_CANVAS_ELLIPSE GNOME_TYPE_CANVAS_GROUP GNOME_TYPE_CANVAS_ITEM GNOME_TYPE_CANVAS_LINE GNOME_TYPE_CANVAS_PATH_DEF GNOME_TYPE_CANVAS_PIXBUF GNOME_TYPE_CANVAS_POINTS GNOME_TYPE_CANVAS_POLYGON GNOME_TYPE_CANVAS_RE GNOME_TYPE_CANVAS_RECT GNOME_TYPE_CANVAS_RICH_TEXT GNOME_TYPE_CANVAS_SHAPE GNOME_TYPE_CANVAS_TEXT GNOME_TYPE_CANVAS_WIDGET

" Default highlighting
if version >= 508 || !exists("did_libgnomecanvas_syntax_inits")
  if version < 508
    let did_libgnomecanvas_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink libgnomecanvasFunction Function
  HiLink libgnomecanvasMacro Macro
  HiLink libgnomecanvasStruct Type
  HiLink libgnomecanvasDefine Constant

  delcommand HiLink
endif

