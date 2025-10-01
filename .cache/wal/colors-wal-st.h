const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0C090C", /* black   */
  [1] = "#D90E17", /* red     */
  [2] = "#EA0C1A", /* green   */
  [3] = "#FC152B", /* yellow  */
  [4] = "#C9303C", /* blue    */
  [5] = "#8C7989", /* magenta */
  [6] = "#9E96A4", /* cyan    */
  [7] = "#dee0e5", /* white   */

  /* 8 bright colors */
  [8]  = "#9b9ca0",  /* black   */
  [9]  = "#D90E17",  /* red     */
  [10] = "#EA0C1A", /* green   */
  [11] = "#FC152B", /* yellow  */
  [12] = "#C9303C", /* blue    */
  [13] = "#8C7989", /* magenta */
  [14] = "#9E96A4", /* cyan    */
  [15] = "#dee0e5", /* white   */

  /* special colors */
  [256] = "#0C090C", /* background */
  [257] = "#dee0e5", /* foreground */
  [258] = "#dee0e5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
