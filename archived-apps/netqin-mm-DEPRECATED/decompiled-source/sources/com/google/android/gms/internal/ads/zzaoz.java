package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoz.class */
public abstract class zzaoz extends zzgt implements zzapa {
    public zzaoz() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            mo16493r0();
        } else if (i == 3) {
            mo16494b(parcel.readString());
        } else if (i != 4) {
            return false;
        } else {
            mo16495a((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
