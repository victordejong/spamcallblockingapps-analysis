package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfj.class */
public final class zzfj {

    /* renamed from: a */
    private final String f17161a;

    /* renamed from: b */
    private final String f17162b;

    /* renamed from: c */
    private final String f17163c;

    /* renamed from: d */
    private final long f17164d;

    /* renamed from: e */
    private final /* synthetic */ C2734do f17165e;

    private zzfj(C2734do doVar, String str, long j) {
        this.f17165e = doVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j > 0);
        this.f17161a = String.valueOf(str).concat(":start");
        this.f17162b = String.valueOf(str).concat(":count");
        this.f17163c = String.valueOf(str).concat(":value");
        this.f17164d = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfj(C2734do doVar, String str, long j, byte b) {
        this(doVar, str, j);
    }

    /* renamed from: a */
    private final void m1846a() {
        this.f17165e.zzd();
        long currentTimeMillis = this.f17165e.zzm().currentTimeMillis();
        SharedPreferences.Editor edit = this.f17165e.m2136c().edit();
        edit.remove(this.f17162b);
        edit.remove(this.f17163c);
        edit.putLong(this.f17161a, currentTimeMillis);
        edit.apply();
    }

    /* renamed from: b */
    private final long m1845b() {
        return this.f17165e.m2136c().getLong(this.f17161a, 0L);
    }

    public final Pair<String, Long> zza() {
        long j;
        this.f17165e.zzd();
        this.f17165e.zzd();
        long b = m1845b();
        if (b == 0) {
            m1846a();
            j = 0;
        } else {
            j = Math.abs(b - this.f17165e.zzm().currentTimeMillis());
        }
        long j2 = this.f17164d;
        if (j < j2) {
            return null;
        }
        if (j > (j2 << 1)) {
            m1846a();
            return null;
        }
        String string = this.f17165e.m2136c().getString(this.f17163c, null);
        long j3 = this.f17165e.m2136c().getLong(this.f17162b, 0L);
        m1846a();
        return (string == null || j3 <= 0) ? C2734do.f16675a : new Pair<>(string, Long.valueOf(j3));
    }

    public final void zza(String str, long j) {
        this.f17165e.zzd();
        if (m1845b() == 0) {
            m1846a();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j2 = this.f17165e.m2136c().getLong(this.f17162b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f17165e.m2136c().edit();
            edit.putString(this.f17163c, str2);
            edit.putLong(this.f17162b, 1L);
            edit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.f17165e.zzp().m1613c().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.f17165e.m2136c().edit();
        if (z) {
            edit2.putString(this.f17163c, str2);
        }
        edit2.putLong(this.f17162b, j3);
        edit2.apply();
    }
}
