package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzre.class */
public abstract class zzre extends zzgb implements zzrf {
    public zzre() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        zzrl zzrlVar;
        if (i == 2) {
            zzvu zzdm = zzdm();
            parcel2.writeNoException();
            zzge.zza(parcel2, zzdm);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzrlVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                zzrlVar = queryLocalInterface instanceof zzrl ? (zzrl) queryLocalInterface : new zzrn(readStrongBinder);
            }
            zza(zzrlVar);
            parcel2.writeNoException();
            return true;
        }
    }
}
