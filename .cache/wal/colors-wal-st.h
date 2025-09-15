const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0B0D0F", /* black   */
  [1] = "#C91C34", /* red     */
  [2] = "#79817D", /* green   */
  [3] = "#76898B", /* yellow  */
  [4] = "#6EAACA", /* blue    */
  [5] = "#99A4A1", /* magenta */
  [6] = "#C2C4BB", /* cyan    */
  [7] = "#e1e4e1", /* white   */

  /* 8 bright colors */
  [8]  = "#9d9f9d",  /* black   */
  [9]  = "#C91C34",  /* red     */
  [10] = "#79817D", /* green   */
  [11] = "#76898B", /* yellow  */
  [12] = "#6EAACA", /* blue    */
  [13] = "#99A4A1", /* magenta */
  [14] = "#C2C4BB", /* cyan    */
  [15] = "#e1e4e1", /* white   */

  /* special colors */
  [256] = "#0B0D0F", /* background */
  [257] = "#e1e4e1", /* foreground */
  [258] = "#e1e4e1",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
