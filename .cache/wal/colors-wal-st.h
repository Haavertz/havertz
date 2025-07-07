const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f1217", /* black   */
  [1] = "#CC936E", /* red     */
  [2] = "#897D81", /* green   */
  [3] = "#7C989F", /* yellow  */
  [4] = "#9D9E9A", /* blue    */
  [5] = "#DAAB91", /* magenta */
  [6] = "#F2D9A6", /* cyan    */
  [7] = "#ebe5da", /* white   */

  /* 8 bright colors */
  [8]  = "#a4a098",  /* black   */
  [9]  = "#CC936E",  /* red     */
  [10] = "#897D81", /* green   */
  [11] = "#7C989F", /* yellow  */
  [12] = "#9D9E9A", /* blue    */
  [13] = "#DAAB91", /* magenta */
  [14] = "#F2D9A6", /* cyan    */
  [15] = "#ebe5da", /* white   */

  /* special colors */
  [256] = "#0f1217", /* background */
  [257] = "#ebe5da", /* foreground */
  [258] = "#ebe5da",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
