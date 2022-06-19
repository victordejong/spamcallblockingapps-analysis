package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.x3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x3.class */
public final class C1618x3 {

    /* renamed from: a */
    private final String f4563a;

    /* renamed from: b */
    private final boolean f4564b;

    /* renamed from: c */
    private boolean f4565c;

    /* renamed from: d */
    private boolean f4566d;

    /* renamed from: e */
    final /* synthetic */ c4 f4567e;

    public C1618x3(c4 c4Var, String str, boolean z) {
        this.f4567e = c4Var;
        C0931r.m3312g(str);
        this.f4563a = str;
        this.f4564b = z;
    }

    /* renamed from: a */
    public final boolean m1495a() {
        if (!this.f4565c) {
            this.f4565c = true;
            this.f4566d = this.f4567e.p().getBoolean(this.f4563a, this.f4564b);
        }
        return this.f4566d;
    }

    /* renamed from: b */
    public final void m1494b(boolean z) {
        SharedPreferences.Editor edit = this.f4567e.p().edit();
        edit.putBoolean(this.f4563a, z);
        edit.apply();
        this.f4566d = z;
    }
}
