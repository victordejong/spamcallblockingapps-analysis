package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzass.class */
public final class zzass extends zzgc implements zzast {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzass(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zza(zzasf zzasfVar, String str, String str2) {
        Parcel a = m3259a();
        zzge.zza(a, zzasfVar);
        a.writeString(str);
        a.writeString(str2);
        m3256b(2, a);
    }
}
