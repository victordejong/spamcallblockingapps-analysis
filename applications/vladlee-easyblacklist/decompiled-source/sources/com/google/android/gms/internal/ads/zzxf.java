package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxf.class */
public abstract class zzxf extends zzgb implements zzxg {
    public zzxf() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            onVideoStart();
        } else if (i == 2) {
            onVideoPlay();
        } else if (i == 3) {
            onVideoPause();
        } else if (i == 4) {
            onVideoEnd();
        } else if (i != 5) {
            return false;
        } else {
            onVideoMute(zzge.zza(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
