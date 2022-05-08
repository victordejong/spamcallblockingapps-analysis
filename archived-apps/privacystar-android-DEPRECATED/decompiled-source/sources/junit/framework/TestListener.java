package junit.framework;
/* loaded from: classes2-dex2jar.jar:junit/framework/TestListener.class */
public interface TestListener {
    void addError(Test test, Throwable th);

    void addFailure(Test test, AssertionFailedError assertionFailedError);

    void endTest(Test test);

    void startTest(Test test);
}
