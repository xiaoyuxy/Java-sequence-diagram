package test;

import org.aspectj.lang.reflect.MethodSignature;

import diagram.SequenceDiagram;

public aspect MethodTracer {

	pointcut pt(): 
		within(test..*) && call(public * test..*(..));

	String argsToString(Object[] objs){
		String result = "";
		for(Object obj : objs){
			String name = obj.getClass().getName();
			int index = name.lastIndexOf('.');
			name = name.substring(index + 1);
			result += name + ",";
		}
		if(result.length() > 0)
			result = result.substring(0, result.length() -1);
		return result;
	}
	
	before(): pt(){
		String methodName = thisJoinPointStaticPart.getSignature().getName();
		String target = thisJoinPoint.getTarget().getClass().getName();
		int index = target.lastIndexOf('.');
		target = target.substring(index + 1);
		Object[]  args = thisJoinPoint.getArgs();
		String caller = thisJoinPoint.getThis().getClass().getName();
		index = caller.lastIndexOf('.');
		caller = caller.substring(index + 1);

		String retVal = ((MethodSignature) thisJoinPoint.getSignature()).getReturnType().getName();
		index = retVal.lastIndexOf('.');
		if(index != -1)
			retVal = retVal.substring(index + 1);
		String event = caller + "->" + target + ":" + methodName + "(" + this.argsToString(args) + ") : " + retVal + "\n";
		System.out.print(event);
		SequenceDiagram.addInfo(event);
	}
	
}
