# Java-sequence-diagram
Produce Sequence Diagram at Run Time
## Environment and third-party library
1. AspectJ
- AspectJ is a java library to do Aspected Oriented Programming(AOP) for java.
- AspectJ allows programmer to create JoinPoint, which collect runtime information of java code. So it is a perfect        candidate for this project.
- Eclipse AspectJ plugin is used to help development
- The library I used is org.aspect.runtime_1.8.6.2015060815244.jar
- For more information, please visit
- http://www.eclipse.org/aspectj/doc/released/progguide/

2.  PlantUML
- PlantUML is a web tool to draw sequence diagram from textual description
- The library I used is plantuml.jar
- For more information please visit:
- http://plantuml.com/sequence.html

## How it works
- The tested code should be put under a package called test
- The aspectj code MethodTracer.aj and the main class SequenceDiagram.java should be build together with the tested code( I
used the AspectJ eclipse plugin to build them)

## Acknowledgement
- I got the idea to solve this challenge from an open sourced project on
github
- https://github.com/jensnerche/TraceToPlantUml/blob/master/
README.md
- I used two third-party library as mentioned in section 1

## Result Example:
![diagram](https://user-images.githubusercontent.com/17173579/30469004-3391ea34-99a3-11e7-8f6a-9fe96ab91af2.png)
