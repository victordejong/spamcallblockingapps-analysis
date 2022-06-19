package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.z3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/z3.class */
public final class C1631z3 {

    /* renamed from: a */
    private final String f4607a;

    /* renamed from: b */
    private final long f4608b;

    /* renamed from: c */
    private boolean f4609c;

    /* renamed from: d */
    private long f4610d;

    /* renamed from: e */
    final /* synthetic */ c4 f4611e;

    public C1631z3(c4 c4Var, String str, long j) {
        this.f4611e = c4Var;
        C0931r.m3312g(str);
        this.f4607a = str;
        this.f4608b = j;
    }

    /* renamed from: a */
    public final long m1484a() {
        if (!this.f4609c) {
            this.f4609c = true;
            this.f4610d = this.f4611e.p().getLong(this.f4607a, this.f4608b);
        }
        return this.f4610d;
    }

    /* renamed from: b */
    public final void m1483b(long j) {
        SharedPreferences.Editor edit = this.f4611e.p().edit();
        edit.putLong(this.f4607a, j);
        edit.apply();
        this.f4610d = j;
    }
}
