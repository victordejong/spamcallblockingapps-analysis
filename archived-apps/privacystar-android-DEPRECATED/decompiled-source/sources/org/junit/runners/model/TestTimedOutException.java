package org.junit.runners.model;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:org/junit/runners/model/TestTimedOutException.class */
public class TestTimedOutException extends Exception {
    private static final long serialVersionUID = 31935685163547539L;
    private final TimeUnit timeUnit;
    private final long timeout;

    public TestTimedOutException(long j, TimeUnit timeUnit) {
        super(String.format("test timed out after %d %s", Long.valueOf(j), timeUnit.name().toLowerCase()));
        this.timeUnit = timeUnit;
        this.timeout = j;
    }

    public TimeUnit getTimeUnit() {
        return this.timeUnit;
    }

    public long getTimeout() {
        return this.timeout;
    }
}
