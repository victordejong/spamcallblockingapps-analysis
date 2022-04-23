package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacg.class */
public abstract class zzacg extends zzgb implements zzacd {
    public zzacg() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 2) {
            float aspectRatio = getAspectRatio();
            parcel2.writeNoException();
            parcel2.writeFloat(aspectRatio);
            return true;
        } else if (i == 3) {
            zzo(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 4) {
            return false;
        } else {
            IObjectWrapper zzre = zzre();
            parcel2.writeNoException();
            zzge.zza(parcel2, zzre);
            return true;
        }
    }
}
