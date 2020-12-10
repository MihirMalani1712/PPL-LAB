from tkinter import *
from tkinter.colorchooser import askcolor


class main:

    DEFAULT_SIZE = 5.0
    DEFAULT_COLOUR = 'black'

    def __init__(self, master):
        self.master = master
        self.brush_button = Button(master, text='Brush', command=self.use_brush)
        self.brush_button.grid(row=0, column=1)

        self.color_button = Button(master, text='Colour', command=self.choose_color)
        self.color_button.grid(row=0, column=2)

        self.bg_color_button = Button(master, text=' Background Colour', command=self.choose_bg_color)
        self.bg_color_button.grid(row=0, column=3)

        self.eraser_button = Button(master, text='Eraser', command=self.use_eraser)
        self.eraser_button.grid(row=0, column=4)

        self.clear_button = Button(master, text='Clear', command=self.clear)
        self.clear_button.grid(row=0, column=5)

        self.choose_size_button = Scale(master, from_=1, to=10, orient=HORIZONTAL)
        self.choose_size_button.grid(row=0, column=6)

        self.c = Canvas(master, bg='white', width=600, height=600)
        self.c.grid(row=1, columnspan=7)

        self.setup()

    def setup(self):
        self.x1 = None
        self.y1 = None
        self.choose_size_button.set(self.DEFAULT_SIZE)
        self.line_width = self.DEFAULT_SIZE
        self.color = self.DEFAULT_COLOUR
        self.color_bg = 'white'
        self.eraser_on = False
        self.active_button = self.brush_button
        self.c.bind('<B1-Motion>', self.paint)
        self.c.bind('<ButtonRelease-1>', self.penup)

    def use_brush(self):
        self.activate_button(self.brush_button)

    def choose_color(self):
        self.eraser_on = False
        self.color = askcolor(color = self.color)[1]

    def use_eraser(self):
        self.activate_button(self.eraser_button, eraser_mode=True)

    def activate_button(self, some_button, eraser_mode=False):
        self.active_button.config(relief=RAISED)
        some_button.config(relief=SUNKEN)
        self.active_button = some_button
        self.eraser_on = eraser_mode

    def paint(self, event):
        self.line_width = self.choose_size_button.get()
        paint_color = 'white' if self.eraser_on else self.color
        if self.x1 and self.y1:
            self.c.create_line(self.x1, self.y1, event.x, event.y,
                               width=self.line_width, fill=paint_color,
                               capstyle=ROUND, smooth=TRUE, splinesteps=36)
        self.x1 = event.x
        self.y1 = event.y

    def choose_bg_color(self):
        self.color_bg = askcolor(color=self.color_bg)[1]
        self.c['bg'] = self.color_bg

    def clear(self):
        self.c.delete("all")

    def penup(self, event):
        self.x1, self.y1 = None, None


if __name__ == '__main__':
    root = Tk()
    main(root)
    root.title('Paint App')
    root.mainloop()
