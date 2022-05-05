package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwe.class */
public final class zzwe extends zzgc implements zzwc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final void onAppEvent(String str, String str2) {
        Parcel a = m3259a();
        a.writeString(str);
        a.writeString(str2);
        m3256b(1, a);
    }
}
