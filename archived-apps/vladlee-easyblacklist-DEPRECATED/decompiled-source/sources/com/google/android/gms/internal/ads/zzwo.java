package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwo.class */
public final class zzwo extends zzgc implements zzwl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzwl
    public final IBinder zzb(IObjectWrapper iObjectWrapper, int i) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeInt(i);
        Parcel a2 = m3258a(1, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        a2.recycle();
        return readStrongBinder;
    }
}
