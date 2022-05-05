package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahi.class */
public final class zzahi extends zzgc implements zzahg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzahg
    public final void zzcn(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzahg
    public final void zzrv() {
        m3256b(1, m3259a());
    }
}
