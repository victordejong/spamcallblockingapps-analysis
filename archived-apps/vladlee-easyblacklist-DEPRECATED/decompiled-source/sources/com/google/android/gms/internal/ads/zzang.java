package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzang.class */
public abstract class zzang extends zzgb implements zzand {
    public zzang() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 2) {
            zztb();
        } else if (i != 3) {
            return false;
        } else {
            zzdl(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
