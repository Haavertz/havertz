const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0C0B0A", /* black   */
  [1] = "#756C67", /* red     */
  [2] = "#847A74", /* green   */
  [3] = "#8D837C", /* yellow  */
  [4] = "#867F80", /* blue    */
  [5] = "#968C86", /* magenta */
  [6] = "#AEA19A", /* cyan    */
  [7] = "#ddd4cf", /* white   */

  /* 8 bright colors */
  [8]  = "#9a9490",  /* black   */
  [9]  = "#756C67",  /* red     */
  [10] = "#847A74", /* green   */
  [11] = "#8D837C", /* yellow  */
  [12] = "#867F80", /* blue    */
  [13] = "#968C86", /* magenta */
  [14] = "#AEA19A", /* cyan    */
  [15] = "#ddd4cf", /* white   */

  /* special colors */
  [256] = "#0C0B0A", /* background */
  [257] = "#ddd4cf", /* foreground */
  [258] = "#ddd4cf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
