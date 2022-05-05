package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwu.class */
public abstract class zzwu extends zzgb implements zzwr {
    public zzwu() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    public static zzwr zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return queryLocalInterface instanceof zzwr ? (zzwr) queryLocalInterface : new zzwt(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        String str;
        if (i == 1) {
            str = getDescription();
        } else if (i != 2) {
            return false;
        } else {
            str = zzph();
        }
        parcel2.writeNoException();
        parcel2.writeString(str);
        return true;
    }
}
