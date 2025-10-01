static const char norm_fg[] = "#dee0e5";
static const char norm_bg[] = "#0C090C";
static const char norm_border[] = "#9b9ca0";

static const char sel_fg[] = "#dee0e5";
static const char sel_bg[] = "#EA0C1A";
static const char sel_border[] = "#dee0e5";

static const char urg_fg[] = "#dee0e5";
static const char urg_bg[] = "#D90E17";
static const char urg_border[] = "#D90E17";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
