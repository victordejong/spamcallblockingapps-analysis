package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzale.class */
public final class zzale extends zzgc implements zzalc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzale(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzalc
    public final zzald zzde(String str) {
        zzald zzaldVar;
        Parcel a = m3259a();
        a.writeString(str);
        Parcel a2 = m3258a(1, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzaldVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzaldVar = queryLocalInterface instanceof zzald ? (zzald) queryLocalInterface : new zzalf(readStrongBinder);
        }
        a2.recycle();
        return zzaldVar;
    }

    @Override // com.google.android.gms.internal.ads.zzalc
    public final boolean zzdf(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        Parcel a2 = m3258a(2, a);
        boolean zza = zzge.zza(a2);
        a2.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzalc
    public final zzani zzdi(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        Parcel a2 = m3258a(3, a);
        zzani zzad = zzanh.zzad(a2.readStrongBinder());
        a2.recycle();
        return zzad;
    }
}
