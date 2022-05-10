package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RepeatingHandlerRunnable.class */
public abstract class RepeatingHandlerRunnable implements Runnable {

    /* renamed from: a */
    public final Handler f34194a;

    /* renamed from: b */
    public volatile boolean f34195b;

    /* renamed from: c */
    public volatile long f34196c;

    public RepeatingHandlerRunnable(Handler handler) {
        Preconditions.checkNotNull(handler);
        this.f34194a = handler;
    }

    public abstract void doWork();

    @Deprecated
    @VisibleForTesting
    public boolean isRunning() {
        return this.f34195b;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f34195b) {
            doWork();
            this.f34194a.postDelayed(this, this.f34196c);
        }
    }

    public void startRepeating(long j) {
        Preconditions.checkArgument(j > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(j));
        this.f34196c = j;
        if (!this.f34195b) {
            this.f34195b = true;
            this.f34194a.post(this);
        }
    }

    public void stop() {
        this.f34195b = false;
    }
}
