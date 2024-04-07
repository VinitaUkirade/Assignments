package example;

import com.intuit.karate.junit5.Karate;

public class TestRunnerFile {
    @Karate.Test
    Karate testUser(){
        return Karate.run("C:\\Users\\10737537\\Documents\\IntellijProject\\karate\\src\\test\\java\\example\\TestRunnerFeatureFIile.feature");
    }
}