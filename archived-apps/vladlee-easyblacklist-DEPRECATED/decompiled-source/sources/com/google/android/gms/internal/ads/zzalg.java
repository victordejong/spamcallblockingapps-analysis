package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalg.class */
public abstract class zzalg extends zzgb implements zzald {
    public zzalg() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        IInterface iInterface;
        boolean z;
        Bundle bundle;
        zzali zzaliVar = null;
        zzali zzaliVar2 = null;
        zzali zzaliVar3 = null;
        zzali zzaliVar4 = null;
        zzali zzaliVar5 = null;
        zzali zzaliVar6 = null;
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzuj zzujVar = (zzuj) zzge.zza(parcel, zzuj.CREATOR);
                zzug zzugVar = (zzug) zzge.zza(parcel, zzug.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzaliVar5 = queryLocalInterface instanceof zzali ? (zzali) queryLocalInterface : new zzalk(readStrongBinder);
                }
                zza(asInterface, zzujVar, zzugVar, readString, zzaliVar5);
                parcel2.writeNoException();
                return true;
            case 2:
                iInterface = zzsk();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 3:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzug zzugVar2 = (zzug) zzge.zza(parcel, zzug.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzaliVar4 = queryLocalInterface2 instanceof zzali ? (zzali) queryLocalInterface2 : new zzalk(readStrongBinder2);
                }
                zza(asInterface2, zzugVar2, readString2, zzaliVar4);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzuj zzujVar2 = (zzuj) zzge.zza(parcel, zzuj.CREATOR);
                zzug zzugVar3 = (zzug) zzge.zza(parcel, zzug.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzaliVar3 = queryLocalInterface3 instanceof zzali ? (zzali) queryLocalInterface3 : new zzalk(readStrongBinder3);
                }
                zza(asInterface3, zzujVar2, zzugVar3, readString3, readString4, zzaliVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzug zzugVar4 = (zzug) zzge.zza(parcel, zzug.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzaliVar2 = queryLocalInterface4 instanceof zzali ? (zzali) queryLocalInterface4 : new zzalk(readStrongBinder4);
                }
                zza(asInterface4, zzugVar4, readString5, readString6, zzaliVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzug) zzge.zza(parcel, zzug.CREATOR), parcel.readString(), zzary.zzak(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza((zzug) zzge.zza(parcel, zzug.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                z = isInitialized();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 14:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzug zzugVar5 = (zzug) zzge.zza(parcel, zzug.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzaliVar = queryLocalInterface5 instanceof zzali ? (zzali) queryLocalInterface5 : new zzalk(readStrongBinder5);
                }
                zza(asInterface5, zzugVar5, readString7, readString8, zzaliVar, (zzaby) zzge.zza(parcel, zzaby.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                iInterface = zzsl();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 16:
                iInterface = zzsm();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 17:
                bundle = zzsn();
                parcel2.writeNoException();
                zzge.zzb(parcel2, bundle);
                return true;
            case 18:
                bundle = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                zzge.zzb(parcel2, bundle);
                return true;
            case 19:
                bundle = zzso();
                parcel2.writeNoException();
                zzge.zzb(parcel2, bundle);
                return true;
            case 20:
                zza((zzug) zzge.zza(parcel, zzug.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                zzs(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                z = zzsp();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 23:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzary.zzak(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                iInterface = zzsq();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 25:
                setImmersiveMode(zzge.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                iInterface = getVideoController();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 27:
                iInterface = zzsr();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 28:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzug zzugVar6 = (zzug) zzge.zza(parcel, zzug.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzaliVar6 = queryLocalInterface6 instanceof zzali ? (zzali) queryLocalInterface6 : new zzalk(readStrongBinder6);
                }
                zzb(asInterface6, zzugVar6, readString9, zzaliVar6);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                zzt(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzags.zzx(parcel.readStrongBinder()), parcel.createTypedArrayList(zzagx.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
