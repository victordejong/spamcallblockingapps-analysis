package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvw.class */
public final class zzvw extends zzgc implements zzvu {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void destroy() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final Bundle getAdMetadata() {
        Parcel a = m3258a(37, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getAdUnitId() {
        Parcel a = m3258a(31, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getMediationAdapterClassName() {
        Parcel a = m3258a(18, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxb getVideoController() {
        zzxb zzxbVar;
        Parcel a = m3258a(26, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxbVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzxbVar = queryLocalInterface instanceof zzxb ? (zzxb) queryLocalInterface : new zzxd(readStrongBinder);
        }
        a.recycle();
        return zzxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isLoading() {
        Parcel a = m3258a(23, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isReady() {
        Parcel a = m3258a(3, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void pause() {
        m3256b(5, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void resume() {
        m3256b(6, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setImmersiveMode(boolean z) {
        Parcel a = m3259a();
        zzge.writeBoolean(a, z);
        m3256b(34, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setManualImpressionsEnabled(boolean z) {
        Parcel a = m3259a();
        zzge.writeBoolean(a, z);
        m3256b(22, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setUserId(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(25, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void showInterstitial() {
        m3256b(9, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void stopLoading() {
        m3256b(10, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaak zzaakVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaakVar);
        m3256b(19, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaoy zzaoyVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaoyVar);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzape zzapeVar, String str) {
        Parcel a = m3259a();
        zzge.zza(a, zzapeVar);
        a.writeString(str);
        m3256b(15, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaro zzaroVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaroVar);
        m3256b(24, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzrg zzrgVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzrgVar);
        m3256b(40, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuj zzujVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzujVar);
        m3256b(13, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuo zzuoVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzuoVar);
        m3256b(39, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvg zzvgVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzvgVar);
        m3256b(20, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvh zzvhVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzvhVar);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvx zzvxVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzvxVar);
        m3256b(36, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwc zzwcVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzwcVar);
        m3256b(8, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwi zzwiVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzwiVar);
        m3256b(21, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzxh zzxhVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzxhVar);
        m3256b(30, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzyw zzywVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzywVar);
        m3256b(29, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean zza(zzug zzugVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzugVar);
        Parcel a2 = m3258a(4, a);
        boolean zza = zzge.zza(a2);
        a2.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzbr(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(38, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final IObjectWrapper zzjx() {
        Parcel a = m3258a(1, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzjy() {
        m3256b(11, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzuj zzjz() {
        Parcel a = m3258a(12, m3259a());
        zzuj zzujVar = (zzuj) zzge.zza(a, zzuj.CREATOR);
        a.recycle();
        return zzujVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String zzka() {
        Parcel a = m3258a(35, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxa zzkb() {
        zzxa zzxaVar;
        Parcel a = m3258a(41, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxaVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzxaVar = queryLocalInterface instanceof zzxa ? (zzxa) queryLocalInterface : new zzxc(readStrongBinder);
        }
        a.recycle();
        return zzxaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwc zzkc() {
        zzwc zzwcVar;
        Parcel a = m3258a(32, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzwcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzwcVar = queryLocalInterface instanceof zzwc ? (zzwc) queryLocalInterface : new zzwe(readStrongBinder);
        }
        a.recycle();
        return zzwcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvh zzkd() {
        zzvh zzvhVar;
        Parcel a = m3258a(33, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzvhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzvhVar = queryLocalInterface instanceof zzvh ? (zzvh) queryLocalInterface : new zzvj(readStrongBinder);
        }
        a.recycle();
        return zzvhVar;
    }
}
