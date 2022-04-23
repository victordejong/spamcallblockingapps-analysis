package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadk.class */
public final class zzadk extends zzgc implements zzadi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzadi
    public final void zza(zzacw zzacwVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzacwVar);
        m3256b(1, a);
    }
}
