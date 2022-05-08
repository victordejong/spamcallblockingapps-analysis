package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aaa.class */
public final class aaa {

    /* renamed from: b */
    private final zzdbo f7119b = new zzdbo();

    /* renamed from: d */
    private int f7121d = 0;

    /* renamed from: e */
    private int f7122e = 0;

    /* renamed from: f */
    private int f7123f = 0;

    /* renamed from: a */
    private final long f7118a = zzq.zzkx().currentTimeMillis();

    /* renamed from: c */
    private long f7120c = this.f7118a;

    /* renamed from: a */
    public final void m5509a() {
        this.f7120c = zzq.zzkx().currentTimeMillis();
        this.f7121d++;
    }

    /* renamed from: b */
    public final void m5508b() {
        this.f7122e++;
        this.f7119b.zzgpi = true;
    }

    /* renamed from: c */
    public final void m5507c() {
        this.f7123f++;
        this.f7119b.zzgpj++;
    }

    /* renamed from: d */
    public final long m5506d() {
        return this.f7118a;
    }

    /* renamed from: e */
    public final long m5505e() {
        return this.f7120c;
    }

    /* renamed from: f */
    public final int m5504f() {
        return this.f7121d;
    }

    /* renamed from: g */
    public final zzdbo m5503g() {
        zzdbo zzdboVar = (zzdbo) this.f7119b.clone();
        zzdbo zzdboVar2 = this.f7119b;
        zzdboVar2.zzgpi = false;
        zzdboVar2.zzgpj = 0;
        return zzdboVar;
    }

    /* renamed from: h */
    public final String m5502h() {
        return "Created: " + this.f7118a + " Last accessed: " + this.f7120c + " Accesses: " + this.f7121d + "\nEntries retrieved: Valid: " + this.f7122e + " Stale: " + this.f7123f;
    }
}
