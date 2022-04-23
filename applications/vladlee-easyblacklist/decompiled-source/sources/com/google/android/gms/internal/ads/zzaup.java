package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaup.class */
public final class zzaup extends zzgc implements zzaun {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaup(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaun
    public final void onError(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaun
    public final void zzk(String str, String str2) {
        Parcel a = m3259a();
        a.writeString(str);
        a.writeString(str2);
        m3256b(1, a);
    }
}
