package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagg.class */
public abstract class zzagg extends zzgb implements zzagd {
    public zzagg() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        zza((ParcelFileDescriptor) zzge.zza(parcel, ParcelFileDescriptor.CREATOR));
        return true;
    }
}
