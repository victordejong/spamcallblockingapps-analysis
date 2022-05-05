package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgg.class */
public final class zzgg extends zzgc implements zzgf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zza(IObjectWrapper iObjectWrapper, String str) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeString(str);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zza(IObjectWrapper iObjectWrapper, String str, String str2) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeString(str);
        a.writeString(null);
        m3256b(8, a);
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zza(int[] iArr) {
        Parcel a = m3259a();
        a.writeIntArray(null);
        m3256b(4, a);
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zzc(byte[] bArr) {
        Parcel a = m3259a();
        a.writeByteArray(bArr);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zzdn() {
        m3256b(3, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zzm(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(6, a);
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zzn(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(7, a);
    }
}
