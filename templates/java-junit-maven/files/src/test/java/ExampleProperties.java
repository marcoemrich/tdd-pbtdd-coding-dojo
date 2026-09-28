import static org.junit.jupiter.api.Assertions.assertEquals;

import net.jqwik.api.ForAll;
import net.jqwik.api.Property;

class ExampleProperties {
    @Property
    void addIsCommutative(@ForAll int a, @ForAll int b) {
        assertEquals(Example.add(a, b), Example.add(b, a));
    }
}
