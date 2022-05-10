package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
import p131c.p161d.p170b.p224d.p252g.p253a.ge0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmv.class */
public final class zzmv implements zzmz, zznc {

    /* renamed from: a */
    public final Uri f28637a;

    /* renamed from: b */
    public final zzol f28638b;

    /* renamed from: c */
    public final zzka f28639c;

    /* renamed from: d */
    public final int f28640d;

    /* renamed from: e */
    public final Handler f28641e;

    /* renamed from: f */
    public final zzmy f28642f;

    /* renamed from: g */
    public final zzia f28643g = new zzia();

    /* renamed from: h */
    public final int f28644h;

    /* renamed from: i */
    public zznc f28645i;

    /* renamed from: j */
    public zzhy f28646j;

    /* renamed from: k */
    public boolean f28647k;

    public zzmv(Uri uri, zzol zzolVar, zzka zzkaVar, int i, Handler handler, zzmy zzmyVar, String str, int i2) {
        this.f28637a = uri;
        this.f28638b = zzolVar;
        this.f28639c = zzkaVar;
        this.f28640d = i;
        this.f28641e = handler;
        this.f28642f = zzmyVar;
        this.f28644h = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: a */
    public final zzmx mo11792a(int i, zzok zzokVar) {
        zzoz.m11696a(i == 0);
        return new ge0(this.f28637a, this.f28638b.mo11731a(), this.f28639c.mo11875a(), this.f28640d, this.f28641e, this.f28642f, this, zzokVar, null, this.f28644h);
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: a */
    public final void mo11794a() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: a */
    public final void mo11791a(zzhc zzhcVar, boolean z, zznc zzncVar) {
        this.f28645i = zzncVar;
        zznn zznnVar = new zznn(-9223372036854775807L, false);
        this.f28646j = zznnVar;
        zzncVar.mo11795a(zznnVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zznc
    /* renamed from: a */
    public final void mo11795a(zzhy zzhyVar, Object obj) {
        boolean z = false;
        if (zzhyVar.mo11760a(0, this.f28643g, false).f28303c != -9223372036854775807L) {
            z = true;
        }
        if (!this.f28647k || z) {
            this.f28646j = zzhyVar;
            this.f28647k = z;
            this.f28645i.mo11795a(zzhyVar, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: a */
    public final void mo11790a(zzmx zzmxVar) {
        ((ge0) zzmxVar).m26948g();
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: b */
    public final void mo11788b() {
        this.f28645i = null;
    }
}
