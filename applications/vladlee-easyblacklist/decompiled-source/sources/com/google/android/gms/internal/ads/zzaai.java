package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaai.class */
public abstract class zzaai extends zzgb implements zzaaf {
    public zzaai() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        String str;
        if (i == 1) {
            str = zzqs();
        } else if (i != 2) {
            if (i == 3) {
                zzn(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            } else if (i == 4) {
                recordClick();
            } else if (i != 5) {
                return false;
            } else {
                recordImpression();
            }
            parcel2.writeNoException();
            return true;
        } else {
            str = getContent();
        }
        parcel2.writeNoException();
        parcel2.writeString(str);
        return true;
    }
}
