# warunek początkowy 
x0 = 1
# tu można wstawić dowolną funkcję f(x)
f(x) = x - 0.5*x*x+1.7
for i in range(20):
    print x0
    x0 = f(x0)
    
def ne(b,X):
    return X - b*X*X +1.7
#
def pophis(startp,b,length):
    his = [startp]
    for i in range(length):
        his.append( ne(b,his[i]) )
    return his
#
#warunek pocz. przed b, 
#po b ilość iteracji, 
#skala wykresu podana w ymin, ymax
@interact
def _(b=slider(0.05,3,0.05,default=0.5,label='Factor b')):
    show(list_plot(pophis(1,b,35),plotjoined=True,marker='o',ymin=0.5,ymax=3))
    
    
var('r,x0,n')
@interact
def cobweb(a=slider(0.4,1.4,0.1,default=1),x0=slider(0,1,0.1,default=1)): ## zmiana parametru a (am, aM, krok) w funkcji f(x)
    f(x)=x - a*x*x+1.7    ## postać funkcji f(x), która mozna zmieniać
    p = plot(f(x)==0,(x,-1,3),ymin=-2,ymax=3,xmin=-1,xmax=3,color='black')+plot(x,(x,-1,4),color='green',figsize=5)
    for n in range(20):
        th = 1
        if n>45:
            th = 1.5
            color='red'
        elif n < 5:
            color='blue'
            th=1.5    
        else:
            color='grey'
            th =0.5        
        l1 = line([(x0,x0),(x0,f(x0))],color=color,thickness=th)
        l2 = line([(x0,f(x0)),(f(x0),f(x0))],color=color,thickness=th)
        p = p+l1+l2
        x0 = f(x0)
    p.axes_labels(["$x_n$","$x_{n+1}$"])     
    p.show()


def newpop(a,prevpop):
    return a*prevpop

def populationhistory(startpop,a,length):
    history = [startpop]
    for i in range(length):
        history.append( newpop(a,history[i]) )
    return history

@interact
def _( a=slider(0.5,1.1,0.05,default=0.5,label='Malthus Factor a') ):
    myplot=list_plot( populationhistory(1,a,30) ,plotjoined=True,marker='o',ymin=0,ymax=2)##warunek pocz. przed m, skala
    myplot.show()
    
    
def ne(b,pre):
    return 1+b*pre*(1-(1/16)*pre)

def pophis(startp,b,length):
    his = [startp]
    for i in range(length):
        his.append( ne(b,his[i]) )
    return his

@interact
def _( b=slider(0.05,3.8,0.05,default=3.05,label='Factor b') ):
    aplot=list_plot( pophis(4,b,35) ,plotjoined=True,marker='o',ymin=0,ymax=18)##warunek pocz. przed b, skala
    aplot.show()
    
                
