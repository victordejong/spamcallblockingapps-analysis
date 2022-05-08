package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zzg.class */
public final class zzg extends zza implements zze {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.ads_identifier.zze
    public final String getId() {
        Parcel a = m2938a(1, m2939a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zze
    public final boolean zzb(boolean z) {
        Parcel a = m2939a();
        zzc.zza(a, true);
        Parcel a2 = m2938a(2, a);
        boolean zza = zzc.zza(a2);
        a2.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zze
    public final boolean zzc() {
        Parcel a = m2938a(6, m2939a());
        boolean zza = zzc.zza(a);
        a.recycle();
        return zza;
    }
}
