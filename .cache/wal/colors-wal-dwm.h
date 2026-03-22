static const char norm_fg[] = "#e7ebe1";
static const char norm_bg[] = "#0b1b15";
static const char norm_border[] = "#a1a49d";

static const char sel_fg[] = "#e7ebe1";
static const char sel_bg[] = "#A6C868";
static const char sel_border[] = "#e7ebe1";

static const char urg_fg[] = "#e7ebe1";
static const char urg_bg[] = "#A2A164";
static const char urg_border[] = "#A2A164";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
