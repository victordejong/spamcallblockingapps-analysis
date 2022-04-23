package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfm.class */
public final class zzfm {

    /* renamed from: a */
    private final String f17172a;

    /* renamed from: b */
    private final String f17173b = null;

    /* renamed from: c */
    private boolean f17174c;

    /* renamed from: d */
    private String f17175d;

    /* renamed from: e */
    private final /* synthetic */ C2734do f17176e;

    public zzfm(C2734do doVar, String str, String str2) {
        this.f17176e = doVar;
        Preconditions.checkNotEmpty(str);
        this.f17172a = str;
    }

    public final String zza() {
        if (!this.f17174c) {
            this.f17174c = true;
            this.f17175d = this.f17176e.m2136c().getString(this.f17172a, null);
        }
        return this.f17175d;
    }

    public final void zza(String str) {
        if (this.f17176e.zzt().zza(zzap.zzcn) || !zzkm.m1609c(str, this.f17175d)) {
            SharedPreferences.Editor edit = this.f17176e.m2136c().edit();
            edit.putString(this.f17172a, str);
            edit.apply();
            this.f17175d = str;
        }
    }
}
