package org.spongycastle.util.test;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/test/TestFailedException.class */
public class TestFailedException extends RuntimeException {
    private TestResult _result;

    public TestFailedException(TestResult testResult) {
        this._result = testResult;
    }

    public TestResult getResult() {
        return this._result;
    }
}
