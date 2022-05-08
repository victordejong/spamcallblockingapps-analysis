package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahk.class */
public abstract class zzahk extends zzgb implements zzahh {
    public zzahk() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    public static zzahh zzz(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
        return queryLocalInterface instanceof zzahh ? (zzahh) queryLocalInterface : new zzahj(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        zzahb zzahbVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzahbVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
                zzahbVar = queryLocalInterface instanceof zzahb ? (zzahb) queryLocalInterface : new zzahd(readStrongBinder);
            }
            zza(zzahbVar);
        } else if (i != 2) {
            return false;
        } else {
            onInstreamAdFailedToLoad(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
