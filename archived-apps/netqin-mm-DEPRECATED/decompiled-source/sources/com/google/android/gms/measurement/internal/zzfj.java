package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfj.class */
public final class zzfj {
    @VisibleForTesting

    /* renamed from: a */
    public final String f29973a;

    /* renamed from: b */
    public final String f29974b;

    /* renamed from: c */
    public final String f29975c;

    /* renamed from: d */
    public final long f29976d;

    /* renamed from: e */
    public final /* synthetic */ C4737k3 f29977e;

    public zzfj(C4737k3 k3Var, String str, long j) {
        this.f29977e = k3Var;
        Preconditions.m17281b(str);
        Preconditions.m17284a(j > 0);
        this.f29973a = String.valueOf(str).concat(":start");
        this.f29974b = String.valueOf(str).concat(":count");
        this.f29975c = String.valueOf(str).concat(":value");
        this.f29976d = j;
    }

    /* renamed from: a */
    public final Pair<String, Long> m9124a() {
        long j;
        this.f29977e.mo9085c();
        this.f29977e.mo9085c();
        long c = m9121c();
        if (c == 0) {
            m9122b();
            j = 0;
        } else {
            j = Math.abs(c - this.f29977e.mo8779z().mo17091b());
        }
        long j2 = this.f29976d;
        if (j < j2) {
            return null;
        }
        if (j > (j2 << 1)) {
            m9122b();
            return null;
        }
        String string = this.f29977e.m24919q().getString(this.f29975c, null);
        long j3 = this.f29977e.m24919q().getLong(this.f29974b, 0L);
        m9122b();
        return (string == null || j3 <= 0) ? C4737k3.f17205D : new Pair<>(string, Long.valueOf(j3));
    }

    /* renamed from: a */
    public final void m9123a(String str, long j) {
        this.f29977e.mo9085c();
        if (m9121c() == 0) {
            m9122b();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j2 = this.f29977e.m24919q().getLong(this.f29974b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f29977e.m24919q().edit();
            edit.putString(this.f29975c, str2);
            edit.putLong(this.f29974b, 1L);
            edit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.f29977e.m24899f().m8674r().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.f29977e.m24919q().edit();
        if (z) {
            edit2.putString(this.f29975c, str2);
        }
        edit2.putLong(this.f29974b, j3);
        edit2.apply();
    }

    /* renamed from: b */
    public final void m9122b() {
        this.f29977e.mo9085c();
        long b = this.f29977e.mo8779z().mo17091b();
        SharedPreferences.Editor edit = this.f29977e.m24919q().edit();
        edit.remove(this.f29974b);
        edit.remove(this.f29975c);
        edit.putLong(this.f29973a, b);
        edit.apply();
    }

    /* renamed from: c */
    public final long m9121c() {
        return this.f29977e.m24919q().getLong(this.f29973a, 0L);
    }
}
