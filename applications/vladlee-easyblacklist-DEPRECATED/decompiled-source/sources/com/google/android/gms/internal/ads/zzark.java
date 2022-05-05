package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzark.class */
public abstract class zzark extends zzgb implements zzarl {
    public zzark() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public static zzarl zzai(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return queryLocalInterface instanceof zzarl ? (zzarl) queryLocalInterface : new zzarn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        boolean z;
        if (i == 1) {
            zza((zzaru) zzge.zza(parcel, zzaru.CREATOR));
        } else if (i != 2) {
            zzaro zzaroVar = null;
            zzarj zzarjVar = null;
            if (i == 3) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    zzaroVar = queryLocalInterface instanceof zzaro ? (zzaro) queryLocalInterface : new zzarq(readStrongBinder);
                }
                zza(zzaroVar);
            } else if (i != 34) {
                switch (i) {
                    case 5:
                        z = isLoaded();
                        parcel2.writeNoException();
                        zzge.writeBoolean(parcel2, z);
                        return true;
                    case 6:
                        pause();
                        break;
                    case 7:
                        resume();
                        break;
                    case 8:
                        destroy();
                        break;
                    case 9:
                        zzj(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        break;
                    case 10:
                        zzk(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        break;
                    case 11:
                        zzl(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        break;
                    case 12:
                        String mediationAdapterClassName = getMediationAdapterClassName();
                        parcel2.writeNoException();
                        parcel2.writeString(mediationAdapterClassName);
                        return true;
                    case 13:
                        setUserId(parcel.readString());
                        break;
                    case 14:
                        zza(zzwa.zzd(parcel.readStrongBinder()));
                        break;
                    case 15:
                        Bundle adMetadata = getAdMetadata();
                        parcel2.writeNoException();
                        zzge.zzb(parcel2, adMetadata);
                        return true;
                    case 16:
                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                        if (readStrongBinder2 != null) {
                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                            zzarjVar = queryLocalInterface2 instanceof zzarj ? (zzarj) queryLocalInterface2 : new zzari(readStrongBinder2);
                        }
                        zza(zzarjVar);
                        break;
                    case 17:
                        setAppPackageName(parcel.readString());
                        break;
                    case 18:
                        zzi(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        break;
                    case 19:
                        setCustomData(parcel.readString());
                        break;
                    case 20:
                        z = zzqa();
                        parcel2.writeNoException();
                        zzge.writeBoolean(parcel2, z);
                        return true;
                    case 21:
                        zzxa zzkb = zzkb();
                        parcel2.writeNoException();
                        zzge.zza(parcel2, zzkb);
                        return true;
                    default:
                        return false;
                }
            } else {
                setImmersiveMode(zzge.zza(parcel));
            }
        } else {
            show();
        }
        parcel2.writeNoException();
        return true;
    }
}
