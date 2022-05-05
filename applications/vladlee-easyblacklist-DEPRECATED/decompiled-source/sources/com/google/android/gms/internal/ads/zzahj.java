package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahj.class */
public final class zzahj extends zzgc implements zzahh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzahh
    public final void onInstreamAdFailedToLoad(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzahh
    public final void zza(zzahb zzahbVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzahbVar);
        m3256b(1, a);
    }
}
