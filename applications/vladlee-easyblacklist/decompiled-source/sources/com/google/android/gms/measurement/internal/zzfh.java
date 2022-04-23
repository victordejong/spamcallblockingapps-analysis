package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfh.class */
public final class zzfh {

    /* renamed from: a */
    private final String f17156a;

    /* renamed from: b */
    private final boolean f17157b;

    /* renamed from: c */
    private boolean f17158c;

    /* renamed from: d */
    private boolean f17159d;

    /* renamed from: e */
    private final /* synthetic */ C2734do f17160e;

    public zzfh(C2734do doVar, String str, boolean z) {
        this.f17160e = doVar;
        Preconditions.checkNotEmpty(str);
        this.f17156a = str;
        this.f17157b = z;
    }

    public final void zza(boolean z) {
        SharedPreferences.Editor edit = this.f17160e.m2136c().edit();
        edit.putBoolean(this.f17156a, z);
        edit.apply();
        this.f17159d = z;
    }

    public final boolean zza() {
        if (!this.f17158c) {
            this.f17158c = true;
            this.f17159d = this.f17160e.m2136c().getBoolean(this.f17156a, this.f17157b);
        }
        return this.f17159d;
    }
}
