package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadr.class */
public final class zzadr extends zzgc implements zzadp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final void zzb(zzade zzadeVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzadeVar);
        m3256b(1, a);
    }
}
