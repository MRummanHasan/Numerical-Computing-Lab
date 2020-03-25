'''
# Author: @MRummanHasan
# Desc: 4 root-finding algorithm
# Dependencies: modules required math,io,sympy,cmath,matplotlib.pyplot,numpy
# Note: type command 'pip install [module name]' on cmd prompt to install
'''
print("""
      ##########################
        Root Finding Algorithm
      ##########################
      """)



########### NEWTON RAPSON ############
import sympy as sp
def newt(fn, x, tol=0.0001, niter=100):
    for i in range(niter):
        xnew=x- fn[0](x)/fn[1](x)
        if abs(xnew-x) < tol: break
        x=xnew
    return xnew, i

########### FALSI ############
import math
def err(truevalue , approxvalue):
    absoluteerror = abs(truevalue - approxvalue)
    relativeerror = (absoluteerror/truevalue)*100
    return relativeerror
def f(x):
    return x**2 - 2
def rf(a,b):
    itr = 100
    tole = 0.01
    if (f(a) * f(b) >0):
        print("wrong values")

    else:
        for i in range(100):
            c = (a*f(b)-b*f(a))/(f(b)-f(a))
           
            if(f(c) *f(a) < 0):
                print("error is " ,err(b,c), "root is " ,c)
                b= c
                #itr +=1
               
            elif f(c)==0:
                break
            else:
                print("error is " ,err(a,c), "root is " ,c)
                a=c
               # itr +=1
        return c  ,itr

########### MULLER ##################
import cmath
def f(x):
    return cmath.cos(x)-1.3*x



############# BISECTION ##################
##### 2 input a,b
import numpy as np
import matplotlib.pyplot as plt
import math

def f(x):
    return math.cos(math.radians(x)-1.3*x)
def bisection(a,b):
    mid=0
    xl=a  
    xr=b
    niter=0
    if f(a)*f(b)>0:
        print('Wrong a and b')
    else:
        while (np.abs(xl-xr)>=0.0001):
            mid=(xl+xr)/2.0
            prod=f(xl)*f(mid)
            if prod<0:
                xr=mid
                niter+=1
            else:
                xl=mid
                niter+=1
           
    return mid,niter

##################################################
#################### MENU ########################
##################################################
ans=True
while ans:
    print ("""
    1.BISECTION
    2.MULLER
    3.FALSI
    4.NEWTON RAPSON
    0.Exit/Quit
    """)
    ans=input("What would you like to do? ") 
    if ans=="1": 
      print("\n BISECTION")
      def f(x):
          return math.cos(math.radians(x)-1.3*x)
      a=int(input("input A: "))
      b=int(input("input B: "))
      answer,i=bisection(a,b)
      print("Bisection method gives root at x= ", answer, "in ", i,"iterations")

    elif ans=="2":
      print("\n MULER")
      def f(x):
          return cmath.cos(x)-1.3*x
       

      xnm2=0
      xnm1=1
      xn=int(input("input X: hint:2"))
      epsilon=0.0001
      i=0
      print("n\txn\t\tf(xn)")
      print("1\t"+str(xnm2)+"\t\t"+str(f(xnm2)))
      print("2\t"+str(xnm1)+"\t\t"+str(f(xnm1)))
      print("3\t"+str(xn)+"\t\t"+str(f(xn)))
      while(abs(f(xn))>epsilon):
          q=(xn-xnm1)/(xnm1-xnm2)
          a=q*f(xn)-q*(1+q)*f(xnm1)+q**2*f(xnm2)
          b=(2*q+1)*f(xn)-(1+q)**2*f(xnm1)+q**2*f(xnm2)
          c=(1+q)*f(xn)
          r=xn-(xn-xnm1)*((2*c)/(b + cmath.sqrt(b**2-4*a*c)))
          s=xn-(xn-xnm1)*((2*c)/(b - cmath.sqrt(b**2-4*a*c)))
          if(abs(f(r))<abs(f(s))):
              xplus=r
          else:
              xplus=s
             
          print(str(i+4)+"\t{:.4f}".format(xplus.real)+"\t\t{:.4f}".format(f(xplus.real).real))
          xnm2=xnm1
          xnm1=xn
          xn=xplus
          i=i+1
          print(str(i)+"iterations")

    
    elif ans=="3":
      print("\n FALSI")
      aa=int(input("input A: hint1"))
      bb=int(input("input B: hint2"))
      print(rf(aa,bb))

    elif ans=="4":
        y=[lambda x: sp.cos(2*x)*2*x-(x+1)*2, lambda x: -sp.sin(2*x)*2*x - 2]
        x, n=newt(y, 0.5)
        print("the root is %f at %d iteration" %(x,n))

        import sympy as sp
        x=sp.Symbol('x')
        print(sp.diff(sp.cos(x)*x-2*x**2+3*x-1,x))

       
    elif ans=="0":
      print("\n Goodbye")
      break
    elif ans !="":
      print("\n Not Valid Choice Try again")
