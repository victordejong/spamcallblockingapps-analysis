package org.junit.internal.builders;

import org.junit.runner.Runner;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.junit.runners.model.RunnerBuilder;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/builders/JUnit4Builder.class */
public class JUnit4Builder extends RunnerBuilder {
    @Override // org.junit.runners.model.RunnerBuilder
    public Runner runnerForClass(Class<?> cls) throws Throwable {
        return new BlockJUnit4ClassRunner(cls);
    }
}
