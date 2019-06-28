package com.logicbig.example;

import org.junit.Assert;
import org.junit.Test;

public class CalcTest {

    @Test
    public void testMultiply() {
        Calc c = new Calc();
        int i = c.multiply(3, 5);
        Assert.assertEquals(i, 15);
    }
}