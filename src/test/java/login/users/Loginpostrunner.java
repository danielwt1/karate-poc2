package login.users;

import com.intuit.karate.junit5.Karate;

public class Loginpostrunner {

    @Karate.Test
    Karate loginPost(){
        return Karate.run().relativeTo(getClass());
    }
}
