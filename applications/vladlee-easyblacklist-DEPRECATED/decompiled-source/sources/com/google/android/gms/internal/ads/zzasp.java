package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasp.class */
public final class zzasp extends zzgc implements zzasm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    public final IBinder zzd(IObjectWrapper iObjectWrapper, String str, zzalc zzalcVar, int i) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeString(str);
        zzge.zza(a, zzalcVar);
        a.writeInt(i);
        Parcel a2 = m3258a(1, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        a2.recycle();
        return readStrongBinder;
    }
}
