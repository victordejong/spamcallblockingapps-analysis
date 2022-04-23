package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvq.class */
public abstract class zzvq extends zzgb implements zzvn {
    public zzvq() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        zzvh zzvhVar = null;
        zzwi zzwiVar = null;
        switch (i) {
            case 1:
                zzvm zzpd = zzpd();
                parcel2.writeNoException();
                zzge.zza(parcel2, zzpd);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzvhVar = queryLocalInterface instanceof zzvh ? (zzvh) queryLocalInterface : new zzvj(readStrongBinder);
                }
                zzb(zzvhVar);
                break;
            case 3:
                zza(zzadh.zzq(parcel.readStrongBinder()));
                break;
            case 4:
                zza(zzadm.zzr(parcel.readStrongBinder()));
                break;
            case 5:
                zza(parcel.readString(), zzads.zzt(parcel.readStrongBinder()), zzadn.zzs(parcel.readStrongBinder()));
                break;
            case 6:
                zza((zzaby) zzge.zza(parcel, zzaby.CREATOR));
                break;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzwiVar = queryLocalInterface2 instanceof zzwi ? (zzwi) queryLocalInterface2 : new zzwh(readStrongBinder2);
                }
                zzb(zzwiVar);
                break;
            case 8:
                zza(zzadt.zzu(parcel.readStrongBinder()), (zzuj) zzge.zza(parcel, zzuj.CREATOR));
                break;
            case 9:
                zza((PublisherAdViewOptions) zzge.zza(parcel, PublisherAdViewOptions.CREATOR));
                break;
            case 10:
                zza(zzady.zzv(parcel.readStrongBinder()));
                break;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zza((zzagz) zzge.zza(parcel, zzagz.CREATOR));
                break;
            case 14:
                zza(zzahk.zzz(parcel.readStrongBinder()));
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
