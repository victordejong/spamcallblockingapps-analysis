package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadq.class */
public final class zzadq extends zzgc implements zzado {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzado
    public final void zza(zzade zzadeVar, String str) {
        Parcel a = m3259a();
        zzge.zza(a, zzadeVar);
        a.writeString(str);
        m3256b(1, a);
    }
}
