package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarn.class */
public final class zzarn extends zzgc implements zzarl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void destroy() {
        m3256b(8, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final Bundle getAdMetadata() {
        Parcel a = m3258a(15, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final String getMediationAdapterClassName() {
        Parcel a = m3258a(12, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final boolean isLoaded() {
        Parcel a = m3258a(5, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void pause() {
        m3256b(6, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void resume() {
        m3256b(7, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setAppPackageName(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(17, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setCustomData(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(19, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setImmersiveMode(boolean z) {
        Parcel a = m3259a();
        zzge.writeBoolean(a, z);
        m3256b(34, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setUserId(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(13, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void show() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzarj zzarjVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzarjVar);
        m3256b(16, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzaro zzaroVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaroVar);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzaru zzaruVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaruVar);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzvx zzvxVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzvxVar);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzi(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(18, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzj(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(9, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzk(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final zzxa zzkb() {
        Parcel a = m3258a(21, m3259a());
        zzxa zzi = zzwz.zzi(a.readStrongBinder());
        a.recycle();
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzl(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(11, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final boolean zzqa() {
        Parcel a = m3258a(20, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }
}
