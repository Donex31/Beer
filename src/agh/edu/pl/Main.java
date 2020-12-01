package agh.edu.pl;
import org.jpl7.*;

public class Main {

    public static void main(String[] args) {

        Query q = new Query("consult('Beer.pl')");
        q.hasSolution();
    }
}
