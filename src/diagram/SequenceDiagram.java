package diagram;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import net.sourceforge.plantuml.SourceStringReader;
import test.ObserverTest;

public class SequenceDiagram {
	static String diagramInfo = "";
	
	public static void addInfo(String info){
		diagramInfo += info;
	}
	
	public static void drawDiagram(String info){
		try {
			OutputStream png = new FileOutputStream("/Users/kaichen/Desktop/diagram.png");
			String uml = "@startuml\n";
			uml += info;
			uml += "@enduml\n";
			SourceStringReader reader = new SourceStringReader(uml);
		// Write the first image to "png"
			
			String desc = reader.generateImage(png);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// Return a null string if no generation
	}
	
	public static void main(String[] args){
		ObserverTest ot = new ObserverTest();
		ot.test1();
		drawDiagram(diagramInfo);
		
	}
}
