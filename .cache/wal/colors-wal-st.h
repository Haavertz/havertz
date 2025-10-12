const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#010102", /* black   */
  [1] = "#354A5F", /* red     */
  [2] = "#4C596E", /* green   */
  [3] = "#3E6886", /* yellow  */
  [4] = "#5B728E", /* blue    */
  [5] = "#8F7D96", /* magenta */
  [6] = "#6C8EAA", /* cyan    */
  [7] = "#b3cbdb", /* white   */

  /* 8 bright colors */
  [8]  = "#7d8e99",  /* black   */
  [9]  = "#354A5F",  /* red     */
  [10] = "#4C596E", /* green   */
  [11] = "#3E6886", /* yellow  */
  [12] = "#5B728E", /* blue    */
  [13] = "#8F7D96", /* magenta */
  [14] = "#6C8EAA", /* cyan    */
  [15] = "#b3cbdb", /* white   */

  /* special colors */
  [256] = "#010102", /* background */
  [257] = "#b3cbdb", /* foreground */
  [258] = "#b3cbdb",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
