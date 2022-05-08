package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalb.class */
public abstract class zzalb extends zzgb implements zzalc {
    public zzalb() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzalc zzaa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof zzalc ? (zzalc) queryLocalInterface : new zzale(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        IInterface iInterface;
        if (i == 1) {
            iInterface = zzde(parcel.readString());
        } else if (i == 2) {
            boolean zzdf = zzdf(parcel.readString());
            parcel2.writeNoException();
            zzge.writeBoolean(parcel2, zzdf);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            iInterface = zzdi(parcel.readString());
        }
        parcel2.writeNoException();
        zzge.zza(parcel2, iInterface);
        return true;
    }
}
