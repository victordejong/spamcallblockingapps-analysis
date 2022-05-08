package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwf.class */
public final class zzwf extends zzgc implements zzwd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzacm zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, iObjectWrapper2);
        Parcel a2 = m3258a(5, a);
        zzacm zzn = zzacl.zzn(a2.readStrongBinder());
        a2.recycle();
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzacp zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, iObjectWrapper2);
        zzge.zza(a, iObjectWrapper3);
        Parcel a2 = m3258a(11, a);
        zzacp zzo = zzacs.zzo(a2.readStrongBinder());
        a2.recycle();
        return zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzarl zza(IObjectWrapper iObjectWrapper, zzalc zzalcVar, int i) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzalcVar);
        a.writeInt(i);
        Parcel a2 = m3258a(6, a);
        zzarl zzai = zzark.zzai(a2.readStrongBinder());
        a2.recycle();
        return zzai;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvn zza(IObjectWrapper iObjectWrapper, String str, zzalc zzalcVar, int i) {
        zzvn zzvnVar;
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeString(str);
        zzge.zza(a, zzalcVar);
        a.writeInt(i);
        Parcel a2 = m3258a(3, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzvnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzvnVar = queryLocalInterface instanceof zzvn ? (zzvn) queryLocalInterface : new zzvp(readStrongBinder);
        }
        a2.recycle();
        return zzvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvu zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, int i) {
        zzvu zzvuVar;
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzujVar);
        a.writeString(str);
        a.writeInt(i);
        Parcel a2 = m3258a(10, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzvuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzvuVar = queryLocalInterface instanceof zzvu ? (zzvu) queryLocalInterface : new zzvw(readStrongBinder);
        }
        a2.recycle();
        return zzvuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvu zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, zzalc zzalcVar, int i) {
        zzvu zzvuVar;
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzujVar);
        a.writeString(str);
        zzge.zza(a, zzalcVar);
        a.writeInt(i);
        Parcel a2 = m3258a(1, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzvuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzvuVar = queryLocalInterface instanceof zzvu ? (zzvu) queryLocalInterface : new zzvw(readStrongBinder);
        }
        a2.recycle();
        return zzvuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzwk zza(IObjectWrapper iObjectWrapper, int i) {
        zzwk zzwkVar;
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeInt(i);
        Parcel a2 = m3258a(9, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzwkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzwkVar = queryLocalInterface instanceof zzwk ? (zzwk) queryLocalInterface : new zzwm(readStrongBinder);
        }
        a2.recycle();
        return zzwkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzaot zzb(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        Parcel a2 = m3258a(8, a);
        zzaot zzae = zzaos.zzae(a2.readStrongBinder());
        a2.recycle();
        return zzae;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzasg zzb(IObjectWrapper iObjectWrapper, String str, zzalc zzalcVar, int i) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeString(str);
        zzge.zza(a, zzalcVar);
        a.writeInt(i);
        Parcel a2 = m3258a(12, a);
        zzasg zzam = zzasj.zzam(a2.readStrongBinder());
        a2.recycle();
        return zzam;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvu zzb(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, zzalc zzalcVar, int i) {
        zzvu zzvuVar;
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzujVar);
        a.writeString(str);
        zzge.zza(a, zzalcVar);
        a.writeInt(i);
        Parcel a2 = m3258a(2, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzvuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzvuVar = queryLocalInterface instanceof zzvu ? (zzvu) queryLocalInterface : new zzvw(readStrongBinder);
        }
        a2.recycle();
        return zzvuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvu zzc(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, zzalc zzalcVar, int i) {
        zzvu zzvuVar;
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzujVar);
        a.writeString(str);
        zzge.zza(a, zzalcVar);
        a.writeInt(i);
        Parcel a2 = m3258a(13, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzvuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzvuVar = queryLocalInterface instanceof zzvu ? (zzvu) queryLocalInterface : new zzvw(readStrongBinder);
        }
        a2.recycle();
        return zzvuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzwk zzc(IObjectWrapper iObjectWrapper) {
        zzwk zzwkVar;
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        Parcel a2 = m3258a(4, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzwkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzwkVar = queryLocalInterface instanceof zzwk ? (zzwk) queryLocalInterface : new zzwm(readStrongBinder);
        }
        a2.recycle();
        return zzwkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzapd zzd(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        Parcel a2 = m3258a(7, a);
        zzapd zzag = zzapc.zzag(a2.readStrongBinder());
        a2.recycle();
        return zzag;
    }
}
