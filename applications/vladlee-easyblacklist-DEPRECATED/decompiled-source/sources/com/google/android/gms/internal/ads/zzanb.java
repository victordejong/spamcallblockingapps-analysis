package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanb.class */
public abstract class zzanb extends zzgb implements zzanc {
    public zzanb() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zza(zzalu.zzac(parcel.readStrongBinder()));
        } else if (i != 2) {
            return false;
        } else {
            zzdl(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
