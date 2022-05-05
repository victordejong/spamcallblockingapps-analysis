package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfk.class */
public final class zzfk {

    /* renamed from: a */
    private final String f17166a;

    /* renamed from: b */
    private final long f17167b;

    /* renamed from: c */
    private boolean f17168c;

    /* renamed from: d */
    private long f17169d;

    /* renamed from: e */
    private final /* synthetic */ C2734do f17170e;

    public zzfk(C2734do doVar, String str, long j) {
        this.f17170e = doVar;
        Preconditions.checkNotEmpty(str);
        this.f17166a = str;
        this.f17167b = j;
    }

    public final long zza() {
        if (!this.f17168c) {
            this.f17168c = true;
            this.f17169d = this.f17170e.m2136c().getLong(this.f17166a, this.f17167b);
        }
        return this.f17169d;
    }

    public final void zza(long j) {
        SharedPreferences.Editor edit = this.f17170e.m2136c().edit();
        edit.putLong(this.f17166a, j);
        edit.apply();
        this.f17169d = j;
    }
}
