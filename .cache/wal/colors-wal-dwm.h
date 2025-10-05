static const char norm_fg[] = "#d2d1da";
static const char norm_bg[] = "#090707";
static const char norm_border[] = "#939298";

static const char sel_fg[] = "#d2d1da";
static const char sel_bg[] = "#6F7689";
static const char sel_border[] = "#d2d1da";

static const char urg_fg[] = "#d2d1da";
static const char urg_bg[] = "#86726F";
static const char urg_border[] = "#86726F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
