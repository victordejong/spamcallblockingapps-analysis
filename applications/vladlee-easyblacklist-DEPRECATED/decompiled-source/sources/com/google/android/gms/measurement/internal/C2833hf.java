package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.hf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hf.class */
public final class C2833hf {

    /* renamed from: a */
    private final Clock f17015a;

    /* renamed from: b */
    private long f17016b;

    public C2833hf(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.f17015a = clock;
    }

    /* renamed from: a */
    public final void m2032a() {
        this.f17016b = this.f17015a.elapsedRealtime();
    }

    /* renamed from: b */
    public final void m2031b() {
        this.f17016b = 0L;
    }

    /* renamed from: c */
    public final boolean m2030c() {
        return this.f17016b == 0 || this.f17015a.elapsedRealtime() - this.f17016b >= 3600000;
    }
}
