package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaed.class */
public final class zzaed extends zzgc implements zzaeb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaed(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final void onUnconfirmedClickCancelled() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final void onUnconfirmedClickReceived(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(1, a);
    }
}
