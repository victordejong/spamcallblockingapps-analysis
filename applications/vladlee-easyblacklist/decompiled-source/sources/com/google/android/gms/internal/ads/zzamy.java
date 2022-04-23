package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamy.class */
public final class zzamy extends zzgc implements zzamw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzdl(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzx(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(1, a);
    }
}
