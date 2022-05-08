package com.google.android.gms.gass.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzgc;
import com.google.android.gms.internal.ads.zzge;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/zzi.class */
public final class zzi extends zzgc implements zzg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.gass.internal.zzg
    public final zze zza(zzc zzcVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzcVar);
        Parcel a2 = m3258a(1, a);
        zze zzeVar = (zze) zzge.zza(a2, zze.CREATOR);
        a2.recycle();
        return zzeVar;
    }

    @Override // com.google.android.gms.gass.internal.zzg
    public final zzo zza(zzm zzmVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzmVar);
        Parcel a2 = m3258a(3, a);
        zzo zzoVar = (zzo) zzge.zza(a2, zzo.CREATOR);
        a2.recycle();
        return zzoVar;
    }

    @Override // com.google.android.gms.gass.internal.zzg
    public final void zza(zzb zzbVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzbVar);
        m3256b(2, a);
    }
}
