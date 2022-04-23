package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbit.class */
public final class zzbit implements zzbow {

    /* renamed from: a */
    private final zzczn f11926a;

    /* renamed from: b */
    private final zzczt f11927b;

    /* renamed from: c */
    private final zzdda f11928c;

    public zzbit(zzczt zzcztVar, zzdda zzddaVar) {
        this.f11927b = zzcztVar;
        this.f11928c = zzddaVar;
        this.f11926a = zzcztVar.zzgmi.zzgmf;
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(int i) {
        this.f11928c.zza(this.f11927b, null, this.f11926a.zzdbt);
    }
}
