package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaee.class */
public abstract class zzaee extends zzgb implements zzaeb {
    public zzaee() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            onUnconfirmedClickReceived(parcel.readString());
        } else if (i != 2) {
            return false;
        } else {
            onUnconfirmedClickCancelled();
        }
        parcel2.writeNoException();
        return true;
    }
}
