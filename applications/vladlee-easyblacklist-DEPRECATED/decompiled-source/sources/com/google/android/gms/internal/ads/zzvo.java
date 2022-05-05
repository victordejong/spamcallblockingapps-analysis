package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvo.class */
public final class zzvo extends zzgc implements zzvm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final String getMediationAdapterClassName() {
        Parcel a = m3258a(2, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final boolean isLoading() {
        Parcel a = m3258a(3, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zza(zzug zzugVar, int i) {
        Parcel a = m3259a();
        zzge.zza(a, zzugVar);
        a.writeInt(i);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzb(zzug zzugVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzugVar);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final String zzka() {
        Parcel a = m3258a(4, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
