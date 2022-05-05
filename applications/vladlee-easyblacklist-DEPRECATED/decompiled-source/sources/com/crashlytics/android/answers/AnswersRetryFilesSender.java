package com.crashlytics.android.answers;

import java.io.File;
import java.util.List;
import p000a.p001a.p002a.p003a.p004a.p007c.p008a.C0054b;
import p000a.p001a.p002a.p003a.p004a.p007c.p008a.C0055c;
import p000a.p001a.p002a.p003a.p004a.p007c.p008a.C0057e;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0085g;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersRetryFilesSender.class */
class AnswersRetryFilesSender implements AbstractC0085g {
    private static final int BACKOFF_MS = 1000;
    private static final int BACKOFF_POWER = 8;
    private static final double JITTER_PERCENT = 0.1d;
    private static final int MAX_RETRIES = 5;
    private final SessionAnalyticsFilesSender filesSender;
    private final RetryManager retryManager;

    AnswersRetryFilesSender(SessionAnalyticsFilesSender sessionAnalyticsFilesSender, RetryManager retryManager) {
        this.filesSender = sessionAnalyticsFilesSender;
        this.retryManager = retryManager;
    }

    public static AnswersRetryFilesSender build(SessionAnalyticsFilesSender sessionAnalyticsFilesSender) {
        return new AnswersRetryFilesSender(sessionAnalyticsFilesSender, new RetryManager(new C0057e(new RandomBackoff(new C0055c(), JITTER_PERCENT), new C0054b(5))));
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0085g
    public boolean send(List<File> list) {
        long nanoTime = System.nanoTime();
        if (!this.retryManager.canRetry(nanoTime)) {
            return false;
        }
        boolean send = this.filesSender.send(list);
        RetryManager retryManager = this.retryManager;
        if (send) {
            retryManager.reset();
            return true;
        }
        retryManager.recordRetry(nanoTime);
        return false;
    }
}
