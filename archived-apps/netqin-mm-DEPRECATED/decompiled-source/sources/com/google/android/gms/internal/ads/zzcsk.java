package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsk.class */
public final class zzcsk implements zzeoy<zzcsf> {

    /* renamed from: a */
    public final zzeph<Context> f26469a;

    /* renamed from: b */
    public final zzeph<zzbtm> f26470b;

    /* renamed from: c */
    public final zzeph<zzcsc> f26471c;

    /* renamed from: d */
    public final zzeph<zzcrw> f26472d;

    public zzcsk(zzeph<Context> zzephVar, zzeph<zzbtm> zzephVar2, zzeph<zzcsc> zzephVar3, zzeph<zzcrw> zzephVar4) {
        this.f26469a = zzephVar;
        this.f26470b = zzephVar2;
        this.f26471c = zzephVar3;
        this.f26472d = zzephVar4;
    }

    /* renamed from: a */
    public static zzcsk m13874a(zzeph<Context> zzephVar, zzeph<zzbtm> zzephVar2, zzeph<zzcsc> zzephVar3, zzeph<zzcrw> zzephVar4) {
        return new zzcsk(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcsf(this.f26469a.get(), this.f26470b.get(), this.f26471c.get(), this.f26472d.get());
    }
}
