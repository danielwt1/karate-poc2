package login.lists;

import com.intuit.karate.junit5.Karate;

public class ListUsersByPageRunner {

    @Karate.Test
    Karate loginPost(){
        return Karate.run().relativeTo(getClass());
    }
}
