import sympy
import A3B2C_funcs

x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15 = sympy.symbols('x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15')
variables = [x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15]
f = A3B2C_funcs.get_fun_list()

for i,func in enumerate(f):
    for var in variables:
        der = sympy.diff(func,var)
        var = str(var).split('x')[1]
        if der != 0:
            print('der({},{})={}'.format(i+1,var,der))
