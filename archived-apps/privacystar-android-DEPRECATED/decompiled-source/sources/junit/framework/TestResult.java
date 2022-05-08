package junit.framework;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:junit/framework/TestResult.class */
public class TestResult {
    protected List<TestFailure> fFailures = new ArrayList();
    protected List<TestFailure> fErrors = new ArrayList();
    protected List<TestListener> fListeners = new ArrayList();
    protected int fRunTests = 0;
    private boolean fStop = false;

    private List<TestListener> cloneListeners() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            arrayList.addAll(this.fListeners);
        }
        return arrayList;
    }

    public void addError(Test test, Throwable th) {
        synchronized (this) {
            this.fErrors.add(new TestFailure(test, th));
            for (TestListener testListener : cloneListeners()) {
                testListener.addError(test, th);
            }
        }
    }

    public void addFailure(Test test, AssertionFailedError assertionFailedError) {
        synchronized (this) {
            this.fFailures.add(new TestFailure(test, assertionFailedError));
            for (TestListener testListener : cloneListeners()) {
                testListener.addFailure(test, assertionFailedError);
            }
        }
    }

    public void addListener(TestListener testListener) {
        synchronized (this) {
            this.fListeners.add(testListener);
        }
    }

    public void endTest(Test test) {
        for (TestListener testListener : cloneListeners()) {
            testListener.endTest(test);
        }
    }

    public int errorCount() {
        int size;
        synchronized (this) {
            size = this.fErrors.size();
        }
        return size;
    }

    public Enumeration<TestFailure> errors() {
        Enumeration<TestFailure> enumeration;
        synchronized (this) {
            enumeration = Collections.enumeration(this.fErrors);
        }
        return enumeration;
    }

    public int failureCount() {
        int size;
        synchronized (this) {
            size = this.fFailures.size();
        }
        return size;
    }

    public Enumeration<TestFailure> failures() {
        Enumeration<TestFailure> enumeration;
        synchronized (this) {
            enumeration = Collections.enumeration(this.fFailures);
        }
        return enumeration;
    }

    public void removeListener(TestListener testListener) {
        synchronized (this) {
            this.fListeners.remove(testListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void run(final TestCase testCase) {
        startTest(testCase);
        runProtected(testCase, new Protectable() { // from class: junit.framework.TestResult.1
            @Override // junit.framework.Protectable
            public void protect() throws Throwable {
                testCase.runBare();
            }
        });
        endTest(testCase);
    }

    public int runCount() {
        int i;
        synchronized (this) {
            i = this.fRunTests;
        }
        return i;
    }

    public void runProtected(Test test, Protectable protectable) {
        try {
            protectable.protect();
        } catch (ThreadDeath e) {
            throw e;
        } catch (AssertionFailedError e2) {
            addFailure(test, e2);
        } catch (Throwable th) {
            addError(test, th);
        }
    }

    public boolean shouldStop() {
        boolean z;
        synchronized (this) {
            z = this.fStop;
        }
        return z;
    }

    public void startTest(Test test) {
        int countTestCases = test.countTestCases();
        synchronized (this) {
            this.fRunTests += countTestCases;
        }
        for (TestListener testListener : cloneListeners()) {
            testListener.startTest(test);
        }
    }

    public void stop() {
        synchronized (this) {
            this.fStop = true;
        }
    }

    public boolean wasSuccessful() {
        boolean z;
        synchronized (this) {
            if (failureCount() == 0) {
                if (errorCount() == 0) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
