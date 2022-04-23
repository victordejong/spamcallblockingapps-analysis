package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzank.class */
public final class zzank extends zzgc implements zzani {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzank(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final zzxb getVideoController() {
        Parcel a = m3258a(5, m3259a());
        zzxb zzj = zzxe.zzj(a.readStrongBinder());
        a.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzuj zzujVar, zzanj zzanjVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeString(str);
        zzge.zza(a, bundle);
        zzge.zza(a, bundle2);
        zzge.zza(a, zzujVar);
        zzge.zza(a, zzanjVar);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String str, String str2, zzug zzugVar, IObjectWrapper iObjectWrapper, zzamw zzamwVar, zzali zzaliVar, zzuj zzujVar) {
        Parcel a = m3259a();
        a.writeString(str);
        a.writeString(str2);
        zzge.zza(a, zzugVar);
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzamwVar);
        zzge.zza(a, zzaliVar);
        zzge.zza(a, zzujVar);
        m3256b(13, a);
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String str, String str2, zzug zzugVar, IObjectWrapper iObjectWrapper, zzamx zzamxVar, zzali zzaliVar) {
        Parcel a = m3259a();
        a.writeString(str);
        a.writeString(str2);
        zzge.zza(a, zzugVar);
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzamxVar);
        zzge.zza(a, zzaliVar);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String str, String str2, zzug zzugVar, IObjectWrapper iObjectWrapper, zzanc zzancVar, zzali zzaliVar) {
        Parcel a = m3259a();
        a.writeString(str);
        a.writeString(str2);
        zzge.zza(a, zzugVar);
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzancVar);
        zzge.zza(a, zzaliVar);
        m3256b(18, a);
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String str, String str2, zzug zzugVar, IObjectWrapper iObjectWrapper, zzand zzandVar, zzali zzaliVar) {
        Parcel a = m3259a();
        a.writeString(str);
        a.writeString(str2);
        zzge.zza(a, zzugVar);
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzandVar);
        zzge.zza(a, zzaliVar);
        m3256b(16, a);
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String[] strArr, Bundle[] bundleArr) {
        Parcel a = m3259a();
        a.writeStringArray(strArr);
        a.writeTypedArray(bundleArr, 0);
        m3256b(11, a);
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final boolean zzaa(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        Parcel a2 = m3258a(17, a);
        boolean zza = zzge.zza(a2);
        a2.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zzdm(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(19, a);
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final zzanw zztc() {
        Parcel a = m3258a(2, m3259a());
        zzanw zzanwVar = (zzanw) zzge.zza(a, zzanw.CREATOR);
        a.recycle();
        return zzanwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final zzanw zztd() {
        Parcel a = m3258a(3, m3259a());
        zzanw zzanwVar = (zzanw) zzge.zza(a, zzanw.CREATOR);
        a.recycle();
        return zzanwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zzy(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final boolean zzz(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        Parcel a2 = m3258a(15, a);
        boolean zza = zzge.zza(a2);
        a2.recycle();
        return zza;
    }
}
