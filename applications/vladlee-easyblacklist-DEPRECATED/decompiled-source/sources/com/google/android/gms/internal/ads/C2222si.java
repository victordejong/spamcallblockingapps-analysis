package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.si */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/si.class */
final class C2222si implements zzdgt<ParcelFileDescriptor> {

    /* renamed from: a */
    private final /* synthetic */ zzaqe f10456a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2222si(zzaqe zzaqeVar) {
        this.f10456a = zzaqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.f10456a.zzb(parcelFileDescriptor);
        } catch (RemoteException e) {
            zzavs.zza("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        try {
            this.f10456a.zza(zzaxc.zza(th, zzcfb.zzd(th)));
        } catch (RemoteException e) {
            zzavs.zza("Service can't call client", e);
        }
    }
}
