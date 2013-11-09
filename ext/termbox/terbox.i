 %module termbox
 %{
   #include "termbox.h"
 %}

#define TB_HIDE_CURSOR -1
#define TB_INPUT_CURRENT 0
#define TB_INPUT_ESC 1
#define TB_INPUT_ALT 2
#define TB_EOF -1

extern int tb_init(void);
extern void tb_shutdown(void);

extern int tb_width(void);
extern int tb_height(void);

extern void tb_clear(void);
extern void tb_set_clear_attributes(uint16_t fg, uint16_t bg);
extern void tb_present(void);


extern void tb_set_cursor(int cx, int cy);
extern void tb_put_cell(int x, int y, const struct tb_cell *cell);
extern void tb_change_cell(int x, int y, uint32_t ch, uint16_t fg, uint16_t bg);
extern void tb_blit(int x, int y, int w, int h, const struct tb_cell *cells);


extern int tb_select_input_mode(int mode);


extern int tb_peek_event(struct tb_event *event, int timeout);

extern int tb_poll_event(struct tb_event *event);


extern int tb_utf8_char_length(char c);
extern int tb_utf8_char_to_unicode(uint32_t *out, const char *c);
extern int tb_utf8_unicode_to_char(char *out, uint32_t c);
