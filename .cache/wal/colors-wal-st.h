const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0E0316", /* black   */
  [1] = "#900012", /* red     */
  [2] = "#A20228", /* green   */
  [3] = "#A10B58", /* yellow  */
  [4] = "#C22D52", /* blue    */
  [5] = "#CE0561", /* magenta */
  [6] = "#762C8A", /* cyan    */
  [7] = "#d99cca", /* white   */

  /* 8 bright colors */
  [8]  = "#976d8d",  /* black   */
  [9]  = "#900012",  /* red     */
  [10] = "#A20228", /* green   */
  [11] = "#A10B58", /* yellow  */
  [12] = "#C22D52", /* blue    */
  [13] = "#CE0561", /* magenta */
  [14] = "#762C8A", /* cyan    */
  [15] = "#d99cca", /* white   */

  /* special colors */
  [256] = "#0E0316", /* background */
  [257] = "#d99cca", /* foreground */
  [258] = "#d99cca",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
