package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalf.class */
public final class zzalf extends zzgc implements zzald {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void destroy() {
        m3256b(5, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle getInterstitialAdapterInfo() {
        Parcel a = m3258a(18, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzxb getVideoController() {
        Parcel a = m3258a(26, m3259a());
        zzxb zzj = zzxe.zzj(a.readStrongBinder());
        a.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final boolean isInitialized() {
        Parcel a = m3258a(13, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void pause() {
        m3256b(8, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void resume() {
        m3256b(9, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void setImmersiveMode(boolean z) {
        Parcel a = m3259a();
        zzge.writeBoolean(a, z);
        m3256b(25, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void showInterstitial() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void showVideo() {
        m3256b(12, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzagp zzagpVar, List<zzagx> list) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzagpVar);
        a.writeTypedList(list);
        m3256b(31, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzarz zzarzVar, List<String> list) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzarzVar);
        a.writeStringList(list);
        m3256b(23, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzali zzaliVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzugVar);
        a.writeString(str);
        zzge.zza(a, zzaliVar);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzarz zzarzVar, String str2) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzugVar);
        a.writeString(str);
        zzge.zza(a, zzarzVar);
        a.writeString(str2);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, String str2, zzali zzaliVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzugVar);
        a.writeString(str);
        a.writeString(str2);
        zzge.zza(a, zzaliVar);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, String str2, zzali zzaliVar, zzaby zzabyVar, List<String> list) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzugVar);
        a.writeString(str);
        a.writeString(str2);
        zzge.zza(a, zzaliVar);
        zzge.zza(a, zzabyVar);
        a.writeStringList(list);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, zzug zzugVar, String str, zzali zzaliVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzujVar);
        zzge.zza(a, zzugVar);
        a.writeString(str);
        zzge.zza(a, zzaliVar);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, zzug zzugVar, String str, String str2, zzali zzaliVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzujVar);
        zzge.zza(a, zzugVar);
        a.writeString(str);
        a.writeString(str2);
        zzge.zza(a, zzaliVar);
        m3256b(6, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(zzug zzugVar, String str) {
        Parcel a = m3259a();
        zzge.zza(a, zzugVar);
        a.writeString(str);
        m3256b(11, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(zzug zzugVar, String str, String str2) {
        Parcel a = m3259a();
        zzge.zza(a, zzugVar);
        a.writeString(str);
        a.writeString(str2);
        m3256b(20, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzb(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzali zzaliVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzugVar);
        a.writeString(str);
        zzge.zza(a, zzaliVar);
        m3256b(28, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzs(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(21, a);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final IObjectWrapper zzsk() {
        Parcel a = m3258a(2, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzall zzsl() {
        zzall zzallVar;
        Parcel a = m3258a(15, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzallVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzallVar = queryLocalInterface instanceof zzall ? (zzall) queryLocalInterface : new zzaln(readStrongBinder);
        }
        a.recycle();
        return zzallVar;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzalq zzsm() {
        zzalq zzalqVar;
        Parcel a = m3258a(16, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzalqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzalqVar = queryLocalInterface instanceof zzalq ? (zzalq) queryLocalInterface : new zzals(readStrongBinder);
        }
        a.recycle();
        return zzalqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle zzsn() {
        Parcel a = m3258a(17, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle zzso() {
        Parcel a = m3258a(19, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final boolean zzsp() {
        Parcel a = m3258a(22, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzade zzsq() {
        Parcel a = m3258a(24, m3259a());
        zzade zzp = zzadd.zzp(a.readStrongBinder());
        a.recycle();
        return zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzalr zzsr() {
        zzalr zzalrVar;
        Parcel a = m3258a(27, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzalrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzalrVar = queryLocalInterface instanceof zzalr ? (zzalr) queryLocalInterface : new zzalt(readStrongBinder);
        }
        a.recycle();
        return zzalrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzt(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(30, a);
    }
}
