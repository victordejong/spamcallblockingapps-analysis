package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcih.class */
public final class zzcih implements zzeoy<zzcif> {

    /* renamed from: a */
    public final zzeph<Context> f26065a;

    /* renamed from: b */
    public final zzeph<zzcei> f26066b;

    /* renamed from: c */
    public final zzeph<zzcfe> f26067c;

    /* renamed from: d */
    public final zzeph<zzcdx> f26068d;

    public zzcih(zzeph<Context> zzephVar, zzeph<zzcei> zzephVar2, zzeph<zzcfe> zzephVar3, zzeph<zzcdx> zzephVar4) {
        this.f26065a = zzephVar;
        this.f26066b = zzephVar2;
        this.f26067c = zzephVar3;
        this.f26068d = zzephVar4;
    }

    /* renamed from: a */
    public static zzcih m14209a(zzeph<Context> zzephVar, zzeph<zzcei> zzephVar2, zzeph<zzcfe> zzephVar3, zzeph<zzcdx> zzephVar4) {
        return new zzcih(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcif(this.f26065a.get(), this.f26066b.get(), this.f26067c.get(), this.f26068d.get());
    }
}
