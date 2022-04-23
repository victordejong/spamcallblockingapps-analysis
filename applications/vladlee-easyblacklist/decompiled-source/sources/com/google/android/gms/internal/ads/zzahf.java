package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahf.class */
public abstract class zzahf extends zzgb implements zzahg {
    public zzahf() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zzrv();
        } else if (i != 2) {
            return false;
        } else {
            zzcn(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
