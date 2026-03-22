const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0b0c0b", /* black   */
  [1] = "#49433C", /* red     */
  [2] = "#3D4040", /* green   */
  [3] = "#50514C", /* yellow  */
  [4] = "#6E6863", /* blue    */
  [5] = "#B0493D", /* magenta */
  [6] = "#F14935", /* cyan    */
  [7] = "#bcb8b4", /* white   */

  /* 8 bright colors */
  [8]  = "#83807d",  /* black   */
  [9]  = "#49433C",  /* red     */
  [10] = "#3D4040", /* green   */
  [11] = "#50514C", /* yellow  */
  [12] = "#6E6863", /* blue    */
  [13] = "#B0493D", /* magenta */
  [14] = "#F14935", /* cyan    */
  [15] = "#bcb8b4", /* white   */

  /* special colors */
  [256] = "#0b0c0b", /* background */
  [257] = "#bcb8b4", /* foreground */
  [258] = "#bcb8b4",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
