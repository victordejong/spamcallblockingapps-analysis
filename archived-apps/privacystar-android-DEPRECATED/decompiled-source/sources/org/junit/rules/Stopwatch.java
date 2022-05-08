package org.junit.rules;

import java.util.concurrent.TimeUnit;
import org.junit.AssumptionViolatedException;
import org.junit.runner.Description;
import org.junit.runners.model.Statement;
/* loaded from: classes2-dex2jar.jar:org/junit/rules/Stopwatch.class */
public abstract class Stopwatch implements TestRule {
    private final Clock clock;
    private volatile long endNanos;
    private volatile long startNanos;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/junit/rules/Stopwatch$Clock.class */
    public static class Clock {
        Clock() {
        }

        public long nanoTime() {
            return System.nanoTime();
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/rules/Stopwatch$InternalWatcher.class */
    private class InternalWatcher extends TestWatcher {
        private InternalWatcher() {
        }

        @Override // org.junit.rules.TestWatcher
        protected void failed(Throwable th, Description description) {
            Stopwatch.this.stopping();
            Stopwatch.this.failed(Stopwatch.this.getNanos(), th, description);
        }

        @Override // org.junit.rules.TestWatcher
        protected void finished(Description description) {
            Stopwatch.this.finished(Stopwatch.this.getNanos(), description);
        }

        @Override // org.junit.rules.TestWatcher
        protected void skipped(AssumptionViolatedException assumptionViolatedException, Description description) {
            Stopwatch.this.stopping();
            Stopwatch.this.skipped(Stopwatch.this.getNanos(), assumptionViolatedException, description);
        }

        @Override // org.junit.rules.TestWatcher
        protected void starting(Description description) {
            Stopwatch.this.starting();
        }

        @Override // org.junit.rules.TestWatcher
        protected void succeeded(Description description) {
            Stopwatch.this.stopping();
            Stopwatch.this.succeeded(Stopwatch.this.getNanos(), description);
        }
    }

    public Stopwatch() {
        this(new Clock());
    }

    Stopwatch(Clock clock) {
        this.clock = clock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getNanos() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.startNanos
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0013
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Test has not started"
            r1.<init>(r2)
            throw r0
        L_0x0013:
            r0 = r5
            long r0 = r0.endNanos
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0028
            r0 = r5
            org.junit.rules.Stopwatch$Clock r0 = r0.clock
            long r0 = r0.nanoTime()
            r8 = r0
        L_0x0028:
            r0 = r8
            r1 = r5
            long r1 = r1.startNanos
            long r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.rules.Stopwatch.getNanos():long");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void starting() {
        this.startNanos = this.clock.nanoTime();
        this.endNanos = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopping() {
        this.endNanos = this.clock.nanoTime();
    }

    @Override // org.junit.rules.TestRule
    public final Statement apply(Statement statement, Description description) {
        return new InternalWatcher().apply(statement, description);
    }

    protected void failed(long j, Throwable th, Description description) {
    }

    protected void finished(long j, Description description) {
    }

    public long runtime(TimeUnit timeUnit) {
        return timeUnit.convert(getNanos(), TimeUnit.NANOSECONDS);
    }

    protected void skipped(long j, AssumptionViolatedException assumptionViolatedException, Description description) {
    }

    protected void succeeded(long j, Description description) {
    }
}
