package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlx.class */
public final class zzlx implements zzmb, zzme {

    /* renamed from: a */
    private final Uri f15109a;

    /* renamed from: b */
    private final zzno f15110b;

    /* renamed from: c */
    private final zzji f15111c;

    /* renamed from: d */
    private final int f15112d;

    /* renamed from: e */
    private final zzddu f15113e;

    /* renamed from: f */
    private final zzma f15114f;

    /* renamed from: i */
    private final int f15117i;

    /* renamed from: j */
    private zzme f15118j;

    /* renamed from: k */
    private zzhg f15119k;

    /* renamed from: l */
    private boolean f15120l;

    /* renamed from: h */
    private final String f15116h = null;

    /* renamed from: g */
    private final zzhi f15115g = new zzhi();

    public zzlx(Uri uri, zzno zznoVar, zzji zzjiVar, int i, zzddu zzdduVar, zzma zzmaVar, String str, int i2) {
        this.f15109a = uri;
        this.f15110b = zznoVar;
        this.f15111c = zzjiVar;
        this.f15112d = i;
        this.f15113e = zzdduVar;
        this.f15114f = zzmaVar;
        this.f15117i = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final zzlz zza(int i, zznj zznjVar) {
        zzoc.checkArgument(i == 0);
        return new aol(this.f15109a, this.f15110b.zzih(), this.f15111c.zzgl(), this.f15112d, this.f15113e, this.f15114f, this, zznjVar, this.f15117i);
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zza(zzgk zzgkVar, boolean z, zzme zzmeVar) {
        this.f15118j = zzmeVar;
        this.f15119k = new zzmp(-9223372036854775807L, false);
        zzmeVar.zzb(this.f15119k, null);
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzb(zzhg zzhgVar, Object obj) {
        boolean z = false;
        if (zzhgVar.zza(0, this.f15115g, false).zzagj != -9223372036854775807L) {
            z = true;
        }
        if (!this.f15120l || z) {
            this.f15119k = zzhgVar;
            this.f15120l = z;
            this.f15118j.zzb(this.f15119k, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zzb(zzlz zzlzVar) {
        ((aol) zzlzVar).m4815a();
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zzhr() {
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zzhs() {
        this.f15118j = null;
    }
}
