package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccb.class */
public final class zzccb implements zzeoy<zzccc> {

    /* renamed from: a */
    public final zzeph<zzbwa> f25694a;

    /* renamed from: b */
    public final zzeph<zzbzx> f25695b;

    public zzccb(zzeph<zzbwa> zzephVar, zzeph<zzbzx> zzephVar2) {
        this.f25694a = zzephVar;
        this.f25695b = zzephVar2;
    }

    /* renamed from: a */
    public static zzccb m14820a(zzeph<zzbwa> zzephVar, zzeph<zzbzx> zzephVar2) {
        return new zzccb(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzccc(this.f25694a.get(), this.f25695b.get());
    }
}
