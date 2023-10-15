from random import randint, random
import matplotlib.pyplot as plt

def generate_rgb_color():
    #Create Color
    red = randint(0,255)
    green = randint(0,255)
    blue = randint(0,255)
    
    color = f'rgb({red}, {green}, {blue})'
    return color

def generate_hexa_color():
    #Create Color
    colors = '#{:02X}{:02X}{:02X}'.format(randint(0,255),
                                          randint(0,255),
                                          randint(0,255))
    return colors

def show_rgbColor(color):
    numbers = color.split('(')[1].split(')')[0]
    colors = list(map(int,numbers.split(',')))
    
    color_rgb = [[colors]]
    plt.imshow(color_rgb)
    plt.axis('off')
    plt.show()
    
def show_hexaColor(color):
    red = int(color[1:3],16)
    green = int(color[3:5],16)
    blue = int(color[5:7],16)
    
    colors = [[[red,green,blue]]]
    plt.imshow(colors)
    plt.axis('off')
    plt.show()
    

if __name__=='__main__':
    show_hexaColor(generate_hexa_color())
