const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#090b10", /* black   */
  [1] = "#4C5E6E", /* red     */
  [2] = "#8C767B", /* green   */
  [3] = "#58748D", /* yellow  */
  [4] = "#718DA4", /* blue    */
  [5] = "#719FC7", /* magenta */
  [6] = "#8DA1B2", /* cyan    */
  [7] = "#cad4de", /* white   */

  /* 8 bright colors */
  [8]  = "#8d949b",  /* black   */
  [9]  = "#4C5E6E",  /* red     */
  [10] = "#8C767B", /* green   */
  [11] = "#58748D", /* yellow  */
  [12] = "#718DA4", /* blue    */
  [13] = "#719FC7", /* magenta */
  [14] = "#8DA1B2", /* cyan    */
  [15] = "#cad4de", /* white   */

  /* special colors */
  [256] = "#090b10", /* background */
  [257] = "#cad4de", /* foreground */
  [258] = "#cad4de",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
