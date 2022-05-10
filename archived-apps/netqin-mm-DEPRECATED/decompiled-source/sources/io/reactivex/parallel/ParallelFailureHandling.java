package io.reactivex.parallel;

import p530d.p541c.p542a0.AbstractC9640c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/parallel/ParallelFailureHandling.class */
public enum ParallelFailureHandling implements AbstractC9640c<Long, Throwable, ParallelFailureHandling> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    public ParallelFailureHandling apply(Long l, Throwable th) {
        return this;
    }
}
