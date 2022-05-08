package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasi.class */
public final class zzasi extends zzgc implements zzasg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final Bundle getAdMetadata() {
        Parcel a = m3258a(9, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final String getMediationAdapterClassName() {
        Parcel a = m3258a(4, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final boolean isLoaded() {
        Parcel a = m3258a(3, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(IObjectWrapper iObjectWrapper, boolean z) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.writeBoolean(a, z);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzasl zzaslVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaslVar);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzast zzastVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzastVar);
        m3256b(6, a);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzatb zzatbVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzatbVar);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzug zzugVar, zzaso zzasoVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzugVar);
        zzge.zza(a, zzasoVar);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzwv zzwvVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzwvVar);
        m3256b(8, a);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zzh(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final zzxa zzkb() {
        Parcel a = m3258a(12, m3259a());
        zzxa zzi = zzwz.zzi(a.readStrongBinder());
        a.recycle();
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final zzasf zzpz() {
        zzasf zzasfVar;
        Parcel a = m3258a(11, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzasfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzasfVar = queryLocalInterface instanceof zzasf ? (zzasf) queryLocalInterface : new zzash(readStrongBinder);
        }
        a.recycle();
        return zzasfVar;
    }
}
