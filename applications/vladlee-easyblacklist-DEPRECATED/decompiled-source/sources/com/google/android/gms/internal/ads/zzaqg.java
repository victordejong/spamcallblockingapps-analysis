package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqg.class */
public final class zzaqg extends zzgc implements zzaqe {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaqe
    public final void zza(zzaxc zzaxcVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaxcVar);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaqe
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel a = m3259a();
        zzge.zza(a, parcelFileDescriptor);
        m3256b(1, a);
    }
}
