package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanm.class */
public abstract class zzanm extends zzgb implements zzanj {
    public zzanm() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zzdn(parcel.readString());
        } else if (i != 2) {
            return false;
        } else {
            onFailure(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
