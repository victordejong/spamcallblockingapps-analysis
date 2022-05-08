package com.mopub.common;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/DoubleTimeTracker.class */
public class DoubleTimeTracker {
    @NonNull

    /* renamed from: a */
    public volatile EnumC3758b f8080a;

    /* renamed from: b */
    public long f8081b;

    /* renamed from: c */
    public long f8082c;
    @NonNull

    /* renamed from: d */
    public final Clock f8083d;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DoubleTimeTracker$Clock.class */
    public interface Clock {
        long elapsedRealTime();
    }

    /* renamed from: com.mopub.common.DoubleTimeTracker$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DoubleTimeTracker$b.class */
    public enum EnumC3758b {
        STARTED,
        PAUSED
    }

    /* renamed from: com.mopub.common.DoubleTimeTracker$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DoubleTimeTracker$c.class */
    public static class C3759c implements Clock {
        public C3759c() {
        }

        @Override // com.mopub.common.DoubleTimeTracker.Clock
        public long elapsedRealTime() {
            return SystemClock.elapsedRealtime();
        }
    }

    public DoubleTimeTracker() {
        this(new C3759c());
    }

    @VisibleForTesting
    public DoubleTimeTracker(@NonNull Clock clock) {
        this.f8083d = clock;
        this.f8080a = EnumC3758b.PAUSED;
    }

    /* renamed from: a */
    public final long m30805a() {
        synchronized (this) {
            if (this.f8080a == EnumC3758b.PAUSED) {
                return 0L;
            }
            return this.f8083d.elapsedRealTime() - this.f8081b;
        }
    }

    public double getInterval() {
        double a;
        synchronized (this) {
            a = this.f8082c + m30805a();
        }
        return a;
    }

    public void pause() {
        synchronized (this) {
            if (this.f8080a == EnumC3758b.PAUSED) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already paused.");
                return;
            }
            this.f8082c += m30805a();
            this.f8081b = 0L;
            this.f8080a = EnumC3758b.PAUSED;
        }
    }

    public void start() {
        synchronized (this) {
            if (this.f8080a == EnumC3758b.STARTED) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already started.");
                return;
            }
            this.f8080a = EnumC3758b.STARTED;
            this.f8081b = this.f8083d.elapsedRealTime();
        }
    }
}
