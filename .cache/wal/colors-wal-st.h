const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0b1b15", /* black   */
  [1] = "#A2A164", /* red     */
  [2] = "#A6C868", /* green   */
  [3] = "#CAC96E", /* yellow  */
  [4] = "#73AD87", /* blue    */
  [5] = "#ACC999", /* magenta */
  [6] = "#D6DDA2", /* cyan    */
  [7] = "#e7ebe1", /* white   */

  /* 8 bright colors */
  [8]  = "#a1a49d",  /* black   */
  [9]  = "#A2A164",  /* red     */
  [10] = "#A6C868", /* green   */
  [11] = "#CAC96E", /* yellow  */
  [12] = "#73AD87", /* blue    */
  [13] = "#ACC999", /* magenta */
  [14] = "#D6DDA2", /* cyan    */
  [15] = "#e7ebe1", /* white   */

  /* special colors */
  [256] = "#0b1b15", /* background */
  [257] = "#e7ebe1", /* foreground */
  [258] = "#e7ebe1",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
