package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* renamed from: com.google.android.gms.internal.ads.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/u.class */
final class C2267u implements zzdgf<zzagf, ParcelFileDescriptor> {

    /* renamed from: a */
    private final /* synthetic */ zzafz f10547a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2267u(zzafz zzafzVar) {
        this.f10547a = zzafzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final /* synthetic */ zzdhe<ParcelFileDescriptor> zzf(zzagf zzagfVar) {
        zzazl zzazlVar = new zzazl();
        zzagfVar.zza(this.f10547a, new BinderC2240t(zzazlVar));
        return zzazlVar;
    }
}
