package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* renamed from: com.google.android.gms.measurement.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h.class */
final class C2827h {

    /* renamed from: a */
    final String f16995a;

    /* renamed from: b */
    final String f16996b;

    /* renamed from: c */
    final long f16997c;

    /* renamed from: d */
    final long f16998d;

    /* renamed from: e */
    final long f16999e;

    /* renamed from: f */
    final long f17000f;

    /* renamed from: g */
    final long f17001g;

    /* renamed from: h */
    final Long f17002h;

    /* renamed from: i */
    final Long f17003i;

    /* renamed from: j */
    final Long f17004j;

    /* renamed from: k */
    final Boolean f17005k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2827h(String str, String str2, long j, long j2, long j3) {
        this(str, str2, j, j2, 0L, j3, 0L, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2827h(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        boolean z = true;
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j3 >= 0);
        if (j5 < 0) {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.f16995a = str;
        this.f16996b = str2;
        this.f16997c = j;
        this.f16998d = j2;
        this.f16999e = j3;
        this.f17000f = j4;
        this.f17001g = j5;
        this.f17002h = l;
        this.f17003i = l2;
        this.f17004j = l3;
        this.f17005k = bool;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C2827h m2041a(long j) {
        return new C2827h(this.f16995a, this.f16996b, this.f16997c, this.f16998d, this.f16999e, j, this.f17001g, this.f17002h, this.f17003i, this.f17004j, this.f17005k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C2827h m2040a(long j, long j2) {
        return new C2827h(this.f16995a, this.f16996b, this.f16997c, this.f16998d, this.f16999e, this.f17000f, j, Long.valueOf(j2), this.f17003i, this.f17004j, this.f17005k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C2827h m2039a(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C2827h(this.f16995a, this.f16996b, this.f16997c, this.f16998d, this.f16999e, this.f17000f, this.f17001g, this.f17002h, l, l2, bool);
    }
}
