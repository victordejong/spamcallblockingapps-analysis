package com.mopub.common;

import android.os.SystemClock;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/DoubleTimeTracker.class */
public class DoubleTimeTracker {

    /* renamed from: a */
    public volatile State f33729a;

    /* renamed from: b */
    public long f33730b;

    /* renamed from: c */
    public long f33731c;

    /* renamed from: d */
    public final Clock f33732d;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DoubleTimeTracker$Clock.class */
    public interface Clock {
        long elapsedRealTime();
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DoubleTimeTracker$State.class */
    public enum State {
        STARTED,
        PAUSED
    }

    /* renamed from: com.mopub.common.DoubleTimeTracker$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DoubleTimeTracker$b.class */
    public static class C8697b implements Clock {
        public C8697b() {
        }

        @Override // com.mopub.common.DoubleTimeTracker.Clock
        public long elapsedRealTime() {
            return SystemClock.elapsedRealtime();
        }
    }

    public DoubleTimeTracker() {
        this(new C8697b());
    }

    @VisibleForTesting
    public DoubleTimeTracker(Clock clock) {
        this.f33732d = clock;
        this.f33729a = State.PAUSED;
    }

    /* renamed from: a */
    public final long m4651a() {
        synchronized (this) {
            if (this.f33729a == State.PAUSED) {
                return 0L;
            }
            return this.f33732d.elapsedRealTime() - this.f33730b;
        }
    }

    public double getInterval() {
        double a;
        synchronized (this) {
            a = this.f33731c + m4651a();
        }
        return a;
    }

    public void pause() {
        synchronized (this) {
            if (this.f33729a == State.PAUSED) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already paused.");
                return;
            }
            this.f33731c += m4651a();
            this.f33730b = 0L;
            this.f33729a = State.PAUSED;
        }
    }

    public void start() {
        synchronized (this) {
            if (this.f33729a == State.STARTED) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already started.");
                return;
            }
            this.f33729a = State.STARTED;
            this.f33730b = this.f33732d.elapsedRealTime();
        }
    }
}
