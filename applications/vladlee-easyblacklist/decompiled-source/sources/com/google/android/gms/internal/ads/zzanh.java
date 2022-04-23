package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanh.class */
public abstract class zzanh extends zzgb implements zzani {
    public zzanh() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzani zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzani ? (zzani) queryLocalInterface : new zzank(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        zzanw zzanwVar;
        boolean z;
        zzand zzandVar = null;
        zzamx zzamxVar = null;
        zzamw zzamwVar = null;
        zzanj zzanjVar = null;
        zzanc zzancVar = null;
        if (i != 1) {
            if (i == 2) {
                zzanwVar = zztc();
            } else if (i == 3) {
                zzanwVar = zztd();
            } else if (i == 5) {
                zzxb videoController = getVideoController();
                parcel2.writeNoException();
                zzge.zza(parcel2, videoController);
                return true;
            } else if (i == 10) {
                zzy(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            } else if (i != 11) {
                switch (i) {
                    case 13:
                        String readString = parcel.readString();
                        String readString2 = parcel.readString();
                        zzug zzugVar = (zzug) zzge.zza(parcel, zzug.CREATOR);
                        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                        IBinder readStrongBinder = parcel.readStrongBinder();
                        if (readStrongBinder != null) {
                            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                            zzamwVar = queryLocalInterface instanceof zzamw ? (zzamw) queryLocalInterface : new zzamy(readStrongBinder);
                        }
                        zza(readString, readString2, zzugVar, asInterface, zzamwVar, zzalh.zzab(parcel.readStrongBinder()), (zzuj) zzge.zza(parcel, zzuj.CREATOR));
                        break;
                    case 14:
                        String readString3 = parcel.readString();
                        String readString4 = parcel.readString();
                        zzug zzugVar2 = (zzug) zzge.zza(parcel, zzug.CREATOR);
                        IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                        if (readStrongBinder2 != null) {
                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                            zzamxVar = queryLocalInterface2 instanceof zzamx ? (zzamx) queryLocalInterface2 : new zzamz(readStrongBinder2);
                        }
                        zza(readString3, readString4, zzugVar2, asInterface2, zzamxVar, zzalh.zzab(parcel.readStrongBinder()));
                        break;
                    case 15:
                        z = zzz(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        zzge.writeBoolean(parcel2, z);
                        return true;
                    case 16:
                        String readString5 = parcel.readString();
                        String readString6 = parcel.readString();
                        zzug zzugVar3 = (zzug) zzge.zza(parcel, zzug.CREATOR);
                        IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                        if (readStrongBinder3 != null) {
                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                            zzandVar = queryLocalInterface3 instanceof zzand ? (zzand) queryLocalInterface3 : new zzanf(readStrongBinder3);
                        }
                        zza(readString5, readString6, zzugVar3, asInterface3, zzandVar, zzalh.zzab(parcel.readStrongBinder()));
                        break;
                    case 17:
                        z = zzaa(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        zzge.writeBoolean(parcel2, z);
                        return true;
                    case 18:
                        String readString7 = parcel.readString();
                        String readString8 = parcel.readString();
                        zzug zzugVar4 = (zzug) zzge.zza(parcel, zzug.CREATOR);
                        IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                        IBinder readStrongBinder4 = parcel.readStrongBinder();
                        if (readStrongBinder4 != null) {
                            IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                            zzancVar = queryLocalInterface4 instanceof zzanc ? (zzanc) queryLocalInterface4 : new zzane(readStrongBinder4);
                        }
                        zza(readString7, readString8, zzugVar4, asInterface4, zzancVar, zzalh.zzab(parcel.readStrongBinder()));
                        break;
                    case 19:
                        zzdm(parcel.readString());
                        break;
                    default:
                        return false;
                }
            } else {
                zza(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
            }
            parcel2.writeNoException();
            zzge.zzb(parcel2, zzanwVar);
            return true;
        }
        IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        String readString9 = parcel.readString();
        Bundle bundle = (Bundle) zzge.zza(parcel, Bundle.CREATOR);
        Bundle bundle2 = (Bundle) zzge.zza(parcel, Bundle.CREATOR);
        zzuj zzujVar = (zzuj) zzge.zza(parcel, zzuj.CREATOR);
        IBinder readStrongBinder5 = parcel.readStrongBinder();
        if (readStrongBinder5 != null) {
            IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
            zzanjVar = queryLocalInterface5 instanceof zzanj ? (zzanj) queryLocalInterface5 : new zzanl(readStrongBinder5);
        }
        zza(asInterface5, readString9, bundle, bundle2, zzujVar, zzanjVar);
        parcel2.writeNoException();
        return true;
    }
}
