package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvr.class */
public final class zzvr extends zzgc implements zzvs {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzvs
    public final IBinder zzc(IObjectWrapper iObjectWrapper, String str, zzalc zzalcVar, int i) {
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
