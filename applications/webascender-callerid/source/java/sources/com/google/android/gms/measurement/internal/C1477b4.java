package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.b4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b4.class */
public final class C1477b4 {

    /* renamed from: a */
    private final String f4167a;

    /* renamed from: b */
    private boolean f4168b;

    /* renamed from: c */
    private String f4169c;

    /* renamed from: d */
    final /* synthetic */ c4 f4170d;

    public C1477b4(c4 c4Var, String str, String str2) {
        this.f4170d = c4Var;
        C0931r.m3312g(str);
        this.f4167a = str;
    }

    /* renamed from: a */
    public final String m1701a() {
        if (!this.f4168b) {
            this.f4168b = true;
            this.f4169c = this.f4170d.p().getString(this.f4167a, null);
        }
        return this.f4169c;
    }

    /* renamed from: b */
    public final void m1700b(String str) {
        SharedPreferences.Editor edit = this.f4170d.p().edit();
        edit.putString(this.f4167a, str);
        edit.apply();
        this.f4169c = str;
    }
}
