const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#090707", /* black   */
  [1] = "#86726F", /* red     */
  [2] = "#6F7689", /* green   */
  [3] = "#897C84", /* yellow  */
  [4] = "#7A8597", /* blue    */
  [5] = "#8D8791", /* magenta */
  [6] = "#9B9BAE", /* cyan    */
  [7] = "#d2d1da", /* white   */

  /* 8 bright colors */
  [8]  = "#939298",  /* black   */
  [9]  = "#86726F",  /* red     */
  [10] = "#6F7689", /* green   */
  [11] = "#897C84", /* yellow  */
  [12] = "#7A8597", /* blue    */
  [13] = "#8D8791", /* magenta */
  [14] = "#9B9BAE", /* cyan    */
  [15] = "#d2d1da", /* white   */

  /* special colors */
  [256] = "#090707", /* background */
  [257] = "#d2d1da", /* foreground */
  [258] = "#d2d1da",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
