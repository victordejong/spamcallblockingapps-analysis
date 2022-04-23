package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqd.class */
public final class zzaqd extends zzgc implements zzaqb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final zzapx zza(zzapv zzapvVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzapvVar);
        Parcel a2 = m3258a(1, a);
        zzapx zzapxVar = (zzapx) zzge.zza(a2, zzapx.CREATOR);
        a2.recycle();
        return zzapxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzapv zzapvVar, zzaqc zzaqcVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzapvVar);
        zzge.zza(a, zzaqcVar);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzaqk zzaqkVar, zzaqe zzaqeVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaqkVar);
        zzge.zza(a, zzaqeVar);
        m3256b(4, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(String str, zzaqe zzaqeVar) {
        Parcel a = m3259a();
        a.writeString(str);
        zzge.zza(a, zzaqeVar);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zzb(zzaqk zzaqkVar, zzaqe zzaqeVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaqkVar);
        zzge.zza(a, zzaqeVar);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zzc(zzaqk zzaqkVar, zzaqe zzaqeVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaqkVar);
        zzge.zza(a, zzaqeVar);
        m3256b(6, a);
    }
}
