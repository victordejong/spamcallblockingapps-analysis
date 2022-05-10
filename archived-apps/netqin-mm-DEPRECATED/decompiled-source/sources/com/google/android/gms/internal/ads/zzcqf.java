package com.google.android.gms.internal.ads;

import android.content.Context;
import p131c.p161d.p170b.p224d.p252g.p253a.C4072tm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqf.class */
public final class zzcqf implements zzeoy<C4072tm> {

    /* renamed from: a */
    public final zzeph<Context> f26400a;

    /* renamed from: b */
    public final zzeph<zzawo> f26401b;

    public zzcqf(zzeph<Context> zzephVar, zzeph<zzawo> zzephVar2) {
        this.f26400a = zzephVar;
        this.f26401b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcqf m13937a(zzeph<Context> zzephVar, zzeph<zzawo> zzephVar2) {
        return new zzcqf(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new C4072tm(this.f26400a.get(), this.f26401b.get());
    }
}
