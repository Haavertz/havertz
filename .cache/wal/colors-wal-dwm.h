static const char norm_fg[] = "#bcb8b4";
static const char norm_bg[] = "#0b0c0b";
static const char norm_border[] = "#83807d";

static const char sel_fg[] = "#bcb8b4";
static const char sel_bg[] = "#3D4040";
static const char sel_border[] = "#bcb8b4";

static const char urg_fg[] = "#bcb8b4";
static const char urg_bg[] = "#49433C";
static const char urg_border[] = "#49433C";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
