package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadl.class */
public final class zzadl extends zzgc implements zzadj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzadj
    public final void zza(zzada zzadaVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzadaVar);
        m3256b(1, a);
    }
}
