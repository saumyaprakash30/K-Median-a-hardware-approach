import matplotlib.pyplot as plt
import os
from matplotlib import style
style.use('ggplot')
import numpy as np


def subtractor(a,b):
	# upperCode = "`include \"fulladder16bit.v\"\nmodule top;\nreg [15:0] a,b;\nreg ci;\nwire [15:0] sum;\nwire co;\nfulladder16bit f(a,b,ci,sum,co);\ninitial\nbegin\n"
	# variable = "a=16'd"+str(a)+";b=16'd"+str(b)+";ci=1'b0;\n";
	# lowerCode  ="end\ninitial\nbegin\n\n$monitor(\"%d\",sum);\nend\nendmodule\n"

	upperCode = "`include \"fullsubtractor64bit.v\"\nmodule top;\nreg [63:0] a,b;\nreg ci;\nwire [63:0] sum;\nwire co;\nfullsubtractor64bit f(a,b,ci,sum,co);\ninitial\nbegin\n"
	variable = "a=64'd"+str(a)+";b=64'd"+str(b)+";ci=1'b1;\n";
	lowerCode  ="end\ninitial\nbegin\n\n$monitor(\"%d\",sum);\nend\nendmodule\n"

	testBench = upperCode+variable+lowerCode
	f=open("adder.v","w")
	f.write(testBench)
	f.close()
	cmd = "iverilog "+"adder.v "
	os.system(cmd)
	cmd ="./a.out > adderResult.txt"
	os.system(cmd)
	f =open("adderResult.txt","r")
	res = f.read()
	res=res.strip()

	return int(res)

print(subtractor(10,1))
