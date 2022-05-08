package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamv.class */
public abstract class zzamv extends zzgb implements zzamw {
    public zzamv() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zzx(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
        } else if (i != 2) {
            return false;
        } else {
            zzdl(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
