package org.junit.runners.parameterized;

import org.junit.runner.Runner;
import org.junit.runners.model.InitializationError;
/* loaded from: classes2-dex2jar.jar:org/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParametersFactory.class */
public class BlockJUnit4ClassRunnerWithParametersFactory implements ParametersRunnerFactory {
    @Override // org.junit.runners.parameterized.ParametersRunnerFactory
    public Runner createRunnerForTestWithParameters(TestWithParameters testWithParameters) throws InitializationError {
        return new BlockJUnit4ClassRunnerWithParameters(testWithParameters);
    }
}
