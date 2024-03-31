import java.lang.foreign.*;
import static org.jextract.point_h.*;
import org.jextract.Point2d;

class TestPoint {
    public static void main(String[] args) {

        System.loadLibrary("distance");

        try (Arena arena = Arena.ofConfined()) {
           MemorySegment point = Point2d.allocate(arena);
           Point2d.x(point, 3d);
           Point2d.y(point, 5d);
           System.out.println("Distance to origin = " + distance(point));
        }
        catch (Exception e)
        {
            System.out.print(e);
        }
        
    }
}