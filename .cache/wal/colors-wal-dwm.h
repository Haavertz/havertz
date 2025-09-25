static const char norm_fg[] = "#cad4de";
static const char norm_bg[] = "#090b10";
static const char norm_border[] = "#8d949b";

static const char sel_fg[] = "#cad4de";
static const char sel_bg[] = "#8C767B";
static const char sel_border[] = "#cad4de";

static const char urg_fg[] = "#cad4de";
static const char urg_bg[] = "#4C5E6E";
static const char urg_border[] = "#4C5E6E";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
