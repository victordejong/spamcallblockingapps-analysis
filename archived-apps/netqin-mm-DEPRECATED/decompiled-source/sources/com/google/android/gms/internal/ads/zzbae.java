package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbae.class */
public final class zzbae {

    /* renamed from: a */
    public final String f24701a;

    /* renamed from: b */
    public final double f24702b;

    /* renamed from: c */
    public final double f24703c;

    /* renamed from: d */
    public final double f24704d;

    /* renamed from: e */
    public final int f24705e;

    public zzbae(String str, double d, double d2, double d3, int i) {
        this.f24701a = str;
        this.f24703c = d;
        this.f24702b = d2;
        this.f24704d = d3;
        this.f24705e = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbae)) {
            return false;
        }
        zzbae zzbaeVar = (zzbae) obj;
        return Objects.m17295a(this.f24701a, zzbaeVar.f24701a) && this.f24702b == zzbaeVar.f24702b && this.f24703c == zzbaeVar.f24703c && this.f24705e == zzbaeVar.f24705e && Double.compare(this.f24704d, zzbaeVar.f24704d) == 0;
    }

    public final int hashCode() {
        return Objects.m17294a(this.f24701a, Double.valueOf(this.f24702b), Double.valueOf(this.f24703c), Double.valueOf(this.f24704d), Integer.valueOf(this.f24705e));
    }

    public final String toString() {
        Objects.ToStringHelper a = Objects.m17296a(this);
        a.m17293a("name", this.f24701a);
        a.m17293a("minBound", Double.valueOf(this.f24703c));
        a.m17293a("maxBound", Double.valueOf(this.f24702b));
        a.m17293a("percent", Double.valueOf(this.f24704d));
        a.m17293a("count", Integer.valueOf(this.f24705e));
        return a.toString();
    }
}
