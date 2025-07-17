static const char norm_fg[] = "#ddd4cf";
static const char norm_bg[] = "#0C0B0A";
static const char norm_border[] = "#9a9490";

static const char sel_fg[] = "#ddd4cf";
static const char sel_bg[] = "#847A74";
static const char sel_border[] = "#ddd4cf";

static const char urg_fg[] = "#ddd4cf";
static const char urg_bg[] = "#756C67";
static const char urg_border[] = "#756C67";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
