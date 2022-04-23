package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.C1001ac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvt.class */
public abstract class zzvt extends zzgb implements zzvu {
    public zzvt() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzvu zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof zzvu ? (zzvu) queryLocalInterface : new zzvw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        IInterface iInterface;
        boolean z;
        Parcelable parcelable;
        String str;
        zzwi zzwiVar = null;
        zzvg zzvgVar = null;
        zzwc zzwcVar = null;
        zzvh zzvhVar = null;
        zzvx zzvxVar = null;
        switch (i) {
            case 1:
                iInterface = zzjx();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                z = isReady();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 4:
                z = zza((zzug) zzge.zza(parcel, zzug.CREATOR));
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzvhVar = queryLocalInterface instanceof zzvh ? (zzvh) queryLocalInterface : new zzvj(readStrongBinder);
                }
                zza(zzvhVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzwcVar = queryLocalInterface2 instanceof zzwc ? (zzwc) queryLocalInterface2 : new zzwe(readStrongBinder2);
                }
                zza(zzwcVar);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                zzjy();
                parcel2.writeNoException();
                return true;
            case 12:
                parcelable = zzjz();
                parcel2.writeNoException();
                zzge.zzb(parcel2, parcelable);
                return true;
            case 13:
                zza((zzuj) zzge.zza(parcel, zzuj.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zza(zzapb.zzaf(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zza(zzaph.zzah(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                str = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 19:
                zza(zzaaj.zzk(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzvgVar = queryLocalInterface3 instanceof zzvg ? (zzvg) queryLocalInterface3 : new zzvi(readStrongBinder3);
                }
                zza(zzvgVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzwiVar = queryLocalInterface4 instanceof zzwi ? (zzwi) queryLocalInterface4 : new zzwh(readStrongBinder4);
                }
                zza(zzwiVar);
                parcel2.writeNoException();
                return true;
            case 22:
                setManualImpressionsEnabled(zzge.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                z = isLoading();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 24:
                zza(zzarr.zzaj(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                iInterface = getVideoController();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 29:
                zza((zzyw) zzge.zza(parcel, zzyw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zza((zzxh) zzge.zza(parcel, zzxh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                str = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 32:
                iInterface = zzkc();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 33:
                iInterface = zzkd();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case C1001ac.C1009h.f4220aZ /* 34 */:
                setImmersiveMode(zzge.zza(parcel));
                parcel2.writeNoException();
                return true;
            case C1001ac.C1009h.f4274ba /* 35 */:
                str = zzka();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzvxVar = queryLocalInterface5 instanceof zzvx ? (zzvx) queryLocalInterface5 : new zzvz(readStrongBinder5);
                }
                zza(zzvxVar);
                parcel2.writeNoException();
                return true;
            case 37:
                parcelable = getAdMetadata();
                parcel2.writeNoException();
                zzge.zzb(parcel2, parcelable);
                return true;
            case 38:
                zzbr(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                zza((zzuo) zzge.zza(parcel, zzuo.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                zza(zzrj.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 41:
                iInterface = zzkb();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
        }
    }
}
