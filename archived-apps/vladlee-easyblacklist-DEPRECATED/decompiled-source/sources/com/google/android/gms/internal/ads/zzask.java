package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzask.class */
public abstract class zzask extends zzgb implements zzasl {
    public zzask() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        zzasf zzasfVar;
        if (i == 1) {
            onRewardedAdOpened();
        } else if (i == 2) {
            onRewardedAdClosed();
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzasfVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                zzasfVar = queryLocalInterface instanceof zzasf ? (zzasf) queryLocalInterface : new zzash(readStrongBinder);
            }
            zza(zzasfVar);
        } else if (i != 4) {
            return false;
        } else {
            onRewardedAdFailedToShow(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
