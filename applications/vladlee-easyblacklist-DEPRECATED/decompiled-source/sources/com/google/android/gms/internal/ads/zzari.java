package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzari.class */
public final class zzari extends zzgc implements zzarj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzari(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final void zza(zzare zzareVar, String str, String str2) {
        Parcel a = m3259a();
        zzge.zza(a, zzareVar);
        a.writeString(str);
        a.writeString(str2);
        m3256b(2, a);
    }
}
