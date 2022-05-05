package com.crashlytics.android.answers;

import p000a.p001a.p002a.p003a.p004a.p007c.p008a.C0057e;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/RetryManager.class */
class RetryManager {
    private static final long NANOSECONDS_IN_MS = 1000000;
    long lastRetry;
    private C0057e retryState;

    public RetryManager(C0057e eVar) {
        if (eVar != null) {
            this.retryState = eVar;
            return;
        }
        throw new NullPointerException("retryState must not be null");
    }

    public boolean canRetry(long j) {
        return j - this.lastRetry >= this.retryState.m10272a() * NANOSECONDS_IN_MS;
    }

    public void recordRetry(long j) {
        this.lastRetry = j;
        this.retryState = this.retryState.m10271b();
    }

    public void reset() {
        this.lastRetry = 0L;
        this.retryState = this.retryState.m10270c();
    }
}
