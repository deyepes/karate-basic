package org.example;

import com.intuit.karate.junit5.Karate;

public class SwapiRunner {

    @Karate.Test
    Karate runner() {
        return Karate.run("classpath:org.example.features/swapi.feature")
                .relativeTo(getClass());
    }
}
