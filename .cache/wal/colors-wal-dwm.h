static const char norm_fg[] = "#e1e4e1";
static const char norm_bg[] = "#0B0D0F";
static const char norm_border[] = "#9d9f9d";

static const char sel_fg[] = "#e1e4e1";
static const char sel_bg[] = "#79817D";
static const char sel_border[] = "#e1e4e1";

static const char urg_fg[] = "#e1e4e1";
static const char urg_bg[] = "#C91C34";
static const char urg_border[] = "#C91C34";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
