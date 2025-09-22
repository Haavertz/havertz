static const char norm_fg[] = "#e6e3e1";
static const char norm_bg[] = "#0E1010";
static const char norm_border[] = "#a19e9d";

static const char sel_fg[] = "#e6e3e1";
static const char sel_bg[] = "#BA5547";
static const char sel_border[] = "#e6e3e1";

static const char urg_fg[] = "#e6e3e1";
static const char urg_bg[] = "#CE271E";
static const char urg_border[] = "#CE271E";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
