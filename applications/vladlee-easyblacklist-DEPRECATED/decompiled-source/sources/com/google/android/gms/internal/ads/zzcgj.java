package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgj.class */
public final class zzcgj extends zzaqh {

    /* renamed from: a */
    private final /* synthetic */ zzcgk f13110a;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzcgj(zzcgk zzcgkVar) {
        this.f13110a = zzcgkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqe
    public final void zza(zzaxc zzaxcVar) {
        this.f13110a.f13111a.setException(new zzaxf(zzaxcVar.zzdtr, zzaxcVar.errorCode));
    }

    @Override // com.google.android.gms.internal.ads.zzaqe
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.f13110a.f13111a.set(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
