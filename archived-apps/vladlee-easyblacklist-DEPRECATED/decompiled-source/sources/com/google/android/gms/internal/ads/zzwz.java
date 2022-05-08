package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwz.class */
public abstract class zzwz extends zzgb implements zzxa {
    public zzwz() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    public static zzxa zzi(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        return queryLocalInterface instanceof zzxa ? (zzxa) queryLocalInterface : new zzxc(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        String str;
        if (i == 1) {
            str = getMediationAdapterClassName();
        } else if (i != 2) {
            return false;
        } else {
            str = zzpj();
        }
        parcel2.writeNoException();
        parcel2.writeString(str);
        return true;
    }
}
