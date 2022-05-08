package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzane.class */
public final class zzane extends zzgc implements zzanc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzane(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzanc
    public final void zza(zzalr zzalrVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzalrVar);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzanc
    public final void zzdl(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(2, a);
    }
}
