package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavc.class */
public abstract class zzavc extends zzgt implements zzavd {
    public zzavc() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzaux zzauxVar;
        if (i == 1) {
            mo16282H0();
        } else if (i == 2) {
            mo16283B0();
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzauxVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                zzauxVar = queryLocalInterface instanceof zzaux ? (zzaux) queryLocalInterface : new zzauz(readStrongBinder);
            }
            mo16281a(zzauxVar);
        } else if (i == 4) {
            mo16279o(parcel.readInt());
        } else if (i != 5) {
            return false;
        } else {
            mo16280e((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
