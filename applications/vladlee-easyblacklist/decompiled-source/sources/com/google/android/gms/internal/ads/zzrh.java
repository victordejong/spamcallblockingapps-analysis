package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrh.class */
public final class zzrh extends zzgc implements zzrf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzrh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzrf
    public final void zza(zzrl zzrlVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzrlVar);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzrf
    public final zzvu zzdm() {
        Parcel a = m3258a(2, m3259a());
        zzvu zzc = zzvt.zzc(a.readStrongBinder());
        a.recycle();
        return zzc;
    }
}
