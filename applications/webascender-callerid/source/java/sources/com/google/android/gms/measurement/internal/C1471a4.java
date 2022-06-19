package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.a4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a4.class */
public final class C1471a4 {

    /* renamed from: a */
    final String f4143a;

    /* renamed from: b */
    private final String f4144b;

    /* renamed from: c */
    private final String f4145c;

    /* renamed from: d */
    private final long f4146d;

    /* renamed from: e */
    final /* synthetic */ c4 f4147e;

    /* synthetic */ C1471a4(c4 c4Var, String str, long j, C1610w3 c1610w3) {
        this.f4147e = c4Var;
        C0931r.m3312g("health_monitor");
        C0931r.m3318a(j > 0);
        this.f4143a = "health_monitor:start";
        this.f4144b = "health_monitor:count";
        this.f4145c = "health_monitor:value";
        this.f4146d = j;
    }

    /* renamed from: c */
    private final void m1707c() {
        this.f4147e.h();
        long m3166b = ((l5) this.f4147e).a.a().m3166b();
        SharedPreferences.Editor edit = this.f4147e.p().edit();
        edit.remove(this.f4144b);
        edit.remove(this.f4145c);
        edit.putLong(this.f4143a, m3166b);
        edit.apply();
    }

    /* renamed from: d */
    private final long m1706d() {
        return this.f4147e.p().getLong(this.f4143a, 0L);
    }

    /* renamed from: a */
    public final void m1709a(String str, long j) {
        this.f4147e.h();
        if (m1706d() == 0) {
            m1707c();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j2 = this.f4147e.p().getLong(this.f4144b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f4147e.p().edit();
            edit.putString(this.f4145c, str2);
            edit.putLong(this.f4144b, 1L);
            edit.apply();
            return;
        }
        long nextLong = ((l5) this.f4147e).a.G().h0().nextLong();
        long j3 = j2 + 1;
        long j4 = Long.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.f4147e.p().edit();
        if ((nextLong & Long.MAX_VALUE) < j4) {
            edit2.putString(this.f4145c, str2);
        }
        edit2.putLong(this.f4144b, j3);
        edit2.apply();
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: b */
    public final Pair<String, Long> m1708b() {
        char c;
        this.f4147e.h();
        this.f4147e.h();
        long m1706d = m1706d();
        if (m1706d == 0) {
            m1707c();
            c = 0;
        } else {
            c = Math.abs(m1706d - ((l5) this.f4147e).a.a().m3166b());
        }
        long j = this.f4146d;
        if (c < j) {
            return null;
        }
        if (c > j + j) {
            m1707c();
            return null;
        }
        String string = this.f4147e.p().getString(this.f4145c, null);
        long j2 = this.f4147e.p().getLong(this.f4144b, 0L);
        m1707c();
        return (string == null || j2 <= 0) ? c4.C : new Pair<>(string, Long.valueOf(j2));
    }
}
