package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacq.class */
public final class zzacq extends zzgc implements zzacn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final IBinder zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, int i) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, iObjectWrapper2);
        zzge.zza(a, iObjectWrapper3);
        a.writeInt(i);
        Parcel a2 = m3258a(1, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        a2.recycle();
        return readStrongBinder;
    }
}
