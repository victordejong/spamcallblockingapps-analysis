package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanf.class */
public abstract class zzanf extends zzgt implements zzang {
    public zzanf() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzanh zzanhVar = null;
        zzanh zzanhVar2 = null;
        zzanh zzanhVar3 = null;
        zzanh zzanhVar4 = null;
        zzanh zzanhVar5 = null;
        zzanh zzanhVar6 = null;
        zzanh zzanhVar7 = null;
        switch (i) {
            case 1:
                IObjectWrapper a = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                zzvn zzvnVar = (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR);
                zzvg zzvgVar = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanhVar6 = queryLocalInterface instanceof zzanh ? (zzanh) queryLocalInterface : new zzanj(readStrongBinder);
                }
                mo16549a(a, zzvnVar, zzvgVar, readString, zzanhVar6);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper F1 = mo16559F1();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, F1);
                return true;
            case 3:
                IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                zzvg zzvgVar2 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanhVar5 = queryLocalInterface2 instanceof zzanh ? (zzanh) queryLocalInterface2 : new zzanj(readStrongBinder2);
                }
                mo16543c(a2, zzvgVar2, readString2, zzanhVar5);
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
                IObjectWrapper a3 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                zzvn zzvnVar2 = (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR);
                zzvg zzvgVar3 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanhVar4 = queryLocalInterface3 instanceof zzanh ? (zzanh) queryLocalInterface3 : new zzanj(readStrongBinder3);
                }
                mo16548a(a3, zzvnVar2, zzvgVar3, readString3, readString4, zzanhVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper a4 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                zzvg zzvgVar4 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanhVar3 = queryLocalInterface4 instanceof zzanh ? (zzanh) queryLocalInterface4 : new zzanj(readStrongBinder4);
                }
                mo16551a(a4, zzvgVar4, readString5, readString6, zzanhVar3);
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
                mo16552a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR), parcel.readString(), zzauq.m16329a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo16547a((zzvg) zzgw.m12080a(parcel, zzvg.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean isInitialized = isInitialized();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, isInitialized);
                return true;
            case 14:
                IObjectWrapper a5 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                zzvg zzvgVar5 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanhVar2 = queryLocalInterface5 instanceof zzanh ? (zzanh) queryLocalInterface5 : new zzanj(readStrongBinder5);
                }
                mo16550a(a5, zzvgVar5, readString7, readString8, zzanhVar2, (zzadu) zzgw.m12080a(parcel, zzadu.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                zzano q1 = mo16537q1();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, q1);
                return true;
            case 16:
                zzanp i1 = mo16538i1();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, i1);
                return true;
            case 17:
                Bundle zztv = zztv();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, zztv);
                return true;
            case 18:
                Bundle interstitialAdapterInfo = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, interstitialAdapterInfo);
                return true;
            case 19:
                Bundle h1 = mo16539h1();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, h1);
                return true;
            case 20:
                mo16546a((zzvg) zzgw.m12080a(parcel, zzvg.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                mo16536x(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean R0 = mo16557R0();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, R0);
                return true;
            case 23:
                mo16554a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzauq.m16329a(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                zzafa C0 = mo16560C0();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, C0);
                return true;
            case 25:
                mo16545a(zzgw.m12082a(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 27:
                zzanu c2 = mo16541c2();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, c2);
                return true;
            case 28:
                IObjectWrapper a6 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                zzvg zzvgVar6 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanhVar = queryLocalInterface6 instanceof zzanh ? (zzanh) queryLocalInterface6 : new zzanj(readStrongBinder6);
                }
                mo16553a(a6, zzvgVar6, readString9, zzanhVar);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                mo16558K(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                mo16555a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzair.m16736a(parcel.readStrongBinder()), parcel.createTypedArrayList(zzaja.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                IObjectWrapper a7 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                zzvg zzvgVar7 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanhVar7 = queryLocalInterface7 instanceof zzanh ? (zzanh) queryLocalInterface7 : new zzanj(readStrongBinder7);
                }
                mo16544b(a7, zzvgVar7, readString10, zzanhVar7);
                parcel2.writeNoException();
                return true;
            case 33:
                zzapv d0 = mo16540d0();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, d0);
                return true;
            case 34:
                zzapv V = mo16556V();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, V);
                return true;
        }
    }
}
