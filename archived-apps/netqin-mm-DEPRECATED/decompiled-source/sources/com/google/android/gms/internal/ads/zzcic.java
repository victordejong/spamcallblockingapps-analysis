package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcic.class */
public final class zzcic implements zzeoy<zzchx> {

    /* renamed from: a */
    public final zzeph<zzcdx> f26050a;

    /* renamed from: b */
    public final zzeph<zzcei> f26051b;

    public zzcic(zzeph<zzcdx> zzephVar, zzeph<zzcei> zzephVar2) {
        this.f26050a = zzephVar;
        this.f26051b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcic m14239a(zzeph<zzcdx> zzephVar, zzeph<zzcei> zzephVar2) {
        return new zzcic(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzchx(this.f26050a.get(), this.f26051b.get());
    }
}
