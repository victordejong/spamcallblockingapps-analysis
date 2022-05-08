package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkf.class */
public final class zzkf {

    /* renamed from: a */
    private final Clock f9650a;

    /* renamed from: b */
    private long f9651b;

    public zzkf(Clock clock) {
        Preconditions.m14523k(clock);
        this.f9650a = clock;
    }

    /* renamed from: a */
    public final void m11118a() {
        this.f9651b = this.f9650a.mo14334b();
    }

    /* renamed from: b */
    public final boolean m11117b(long j) {
        return this.f9651b == 0 || this.f9650a.mo14334b() - this.f9651b >= 3600000;
    }

    /* renamed from: c */
    public final void m11116c() {
        this.f9651b = 0L;
    }
}
