const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0E1010", /* black   */
  [1] = "#CE271E", /* red     */
  [2] = "#BA5547", /* green   */
  [3] = "#906B61", /* yellow  */
  [4] = "#90847F", /* blue    */
  [5] = "#9D9D9D", /* magenta */
  [6] = "#D1B9B0", /* cyan    */
  [7] = "#e6e3e1", /* white   */

  /* 8 bright colors */
  [8]  = "#a19e9d",  /* black   */
  [9]  = "#CE271E",  /* red     */
  [10] = "#BA5547", /* green   */
  [11] = "#906B61", /* yellow  */
  [12] = "#90847F", /* blue    */
  [13] = "#9D9D9D", /* magenta */
  [14] = "#D1B9B0", /* cyan    */
  [15] = "#e6e3e1", /* white   */

  /* special colors */
  [256] = "#0E1010", /* background */
  [257] = "#e6e3e1", /* foreground */
  [258] = "#e6e3e1",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
