package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcig.class */
public final class zzcig implements zzeoy<zzcid> {

    /* renamed from: a */
    public final zzeph<String> f26062a;

    /* renamed from: b */
    public final zzeph<zzcdx> f26063b;

    /* renamed from: c */
    public final zzeph<zzcei> f26064c;

    public zzcig(zzeph<String> zzephVar, zzeph<zzcdx> zzephVar2, zzeph<zzcei> zzephVar3) {
        this.f26062a = zzephVar;
        this.f26063b = zzephVar2;
        this.f26064c = zzephVar3;
    }

    /* renamed from: a */
    public static zzcig m14210a(zzeph<String> zzephVar, zzeph<zzcdx> zzephVar2, zzeph<zzcei> zzephVar3) {
        return new zzcig(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcid(this.f26062a.get(), this.f26063b.get(), this.f26064c.get());
    }
}
