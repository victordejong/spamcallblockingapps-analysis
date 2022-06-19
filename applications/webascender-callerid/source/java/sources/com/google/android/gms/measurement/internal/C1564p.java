package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/p.class */
final class C1564p {

    /* renamed from: a */
    final String f4423a;

    /* renamed from: b */
    final String f4424b;

    /* renamed from: c */
    final long f4425c;

    /* renamed from: d */
    final long f4426d;

    /* renamed from: e */
    final long f4427e;

    /* renamed from: f */
    final long f4428f;

    /* renamed from: g */
    final long f4429g;

    /* renamed from: h */
    final Long f4430h;

    /* renamed from: i */
    final Long f4431i;

    /* renamed from: j */
    final Long f4432j;

    /* renamed from: k */
    final Boolean f4433k;

    C1564p(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3318a(j >= 0);
        C0931r.m3318a(j2 >= 0);
        C0931r.m3318a(j3 >= 0);
        C0931r.m3318a(j5 >= 0);
        this.f4423a = str;
        this.f4424b = str2;
        this.f4425c = j;
        this.f4426d = j2;
        this.f4427e = j3;
        this.f4428f = j4;
        this.f4429g = j5;
        this.f4430h = l;
        this.f4431i = l2;
        this.f4432j = l3;
        this.f4433k = bool;
    }

    /* renamed from: a */
    final C1564p m1541a(long j) {
        return new C1564p(this.f4423a, this.f4424b, this.f4425c, this.f4426d, this.f4427e, j, this.f4429g, this.f4430h, this.f4431i, this.f4432j, this.f4433k);
    }

    /* renamed from: b */
    final C1564p m1540b(long j, long j2) {
        return new C1564p(this.f4423a, this.f4424b, this.f4425c, this.f4426d, this.f4427e, this.f4428f, j, Long.valueOf(j2), this.f4431i, this.f4432j, this.f4433k);
    }

    /* renamed from: c */
    final C1564p m1539c(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C1564p(this.f4423a, this.f4424b, this.f4425c, this.f4426d, this.f4427e, this.f4428f, this.f4429g, this.f4430h, l, l2, bool);
    }
}
