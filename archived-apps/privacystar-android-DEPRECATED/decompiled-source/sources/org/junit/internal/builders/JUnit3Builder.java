package org.junit.internal.builders;

import junit.framework.TestCase;
import org.junit.internal.runners.JUnit38ClassRunner;
import org.junit.runner.Runner;
import org.junit.runners.model.RunnerBuilder;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/builders/JUnit3Builder.class */
public class JUnit3Builder extends RunnerBuilder {
    boolean isPre4Test(Class<?> cls) {
        return TestCase.class.isAssignableFrom(cls);
    }

    @Override // org.junit.runners.model.RunnerBuilder
    public Runner runnerForClass(Class<?> cls) throws Throwable {
        if (isPre4Test(cls)) {
            return new JUnit38ClassRunner(cls);
        }
        return null;
    }
}
