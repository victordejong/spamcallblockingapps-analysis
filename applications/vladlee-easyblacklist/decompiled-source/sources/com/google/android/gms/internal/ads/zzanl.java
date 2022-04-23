package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanl.class */
public final class zzanl extends zzgc implements zzanj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void onFailure(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzdn(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(1, a);
    }
}
