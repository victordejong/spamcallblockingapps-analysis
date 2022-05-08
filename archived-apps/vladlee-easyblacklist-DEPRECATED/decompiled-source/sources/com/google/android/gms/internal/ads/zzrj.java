package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrj.class */
public abstract class zzrj extends zzgb implements zzrg {
    public zzrj() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    public static zzrg zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        return queryLocalInterface instanceof zzrg ? (zzrg) queryLocalInterface : new zzri(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        zzrf zzrfVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzrfVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                zzrfVar = queryLocalInterface instanceof zzrf ? (zzrf) queryLocalInterface : new zzrh(readStrongBinder);
            }
            zza(zzrfVar);
        } else if (i != 2) {
            return false;
        } else {
            onAppOpenAdFailedToLoad(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
