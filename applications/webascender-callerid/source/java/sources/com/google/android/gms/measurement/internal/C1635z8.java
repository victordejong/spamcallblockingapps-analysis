package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.util.AbstractC0965f;
/* renamed from: com.google.android.gms.measurement.internal.z8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/z8.class */
final class C1635z8 {

    /* renamed from: a */
    private final AbstractC0965f f4621a;

    /* renamed from: b */
    private long f4622b;

    public C1635z8(AbstractC0965f abstractC0965f) {
        C0931r.m3308k(abstractC0965f);
        this.f4621a = abstractC0965f;
    }

    /* renamed from: a */
    public final void m1482a() {
        this.f4622b = this.f4621a.m3165c();
    }

    /* renamed from: b */
    public final void m1481b() {
        this.f4622b = 0L;
    }

    /* renamed from: c */
    public final boolean m1480c(long j) {
        return this.f4622b == 0 || this.f4621a.m3165c() - this.f4622b >= 3600000;
    }
}
