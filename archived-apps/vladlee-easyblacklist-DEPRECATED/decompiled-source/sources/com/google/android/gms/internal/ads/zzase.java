package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzase.class */
public abstract class zzase extends zzgb implements zzasf {
    public zzase() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    public static zzasf zzal(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
        return queryLocalInterface instanceof zzasf ? (zzasf) queryLocalInterface : new zzash(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            String type = getType();
            parcel2.writeNoException();
            parcel2.writeString(type);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int amount = getAmount();
            parcel2.writeNoException();
            parcel2.writeInt(amount);
            return true;
        }
    }
}
