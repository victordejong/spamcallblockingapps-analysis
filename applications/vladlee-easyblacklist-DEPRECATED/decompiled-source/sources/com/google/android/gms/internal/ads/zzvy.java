package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvy.class */
public final class zzvy extends zzgc implements zzvv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzvv
    public final IBinder zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, zzalc zzalcVar, int i, int i2) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzujVar);
        a.writeString(str);
        zzge.zza(a, zzalcVar);
        a.writeInt(i);
        a.writeInt(i2);
        Parcel a2 = m3258a(2, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        a2.recycle();
        return readStrongBinder;
    }
}
