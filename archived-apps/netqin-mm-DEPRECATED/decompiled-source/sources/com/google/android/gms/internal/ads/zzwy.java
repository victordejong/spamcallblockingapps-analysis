package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwy.class */
public abstract class zzwy extends zzgt implements zzwz {
    public zzwy() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzwt zzwtVar = null;
        zzxq zzxqVar = null;
        switch (i) {
            case 1:
                zzwu O0 = mo10983O0();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, O0);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzwtVar = queryLocalInterface instanceof zzwt ? (zzwt) queryLocalInterface : new zzwv(readStrongBinder);
                }
                mo10974a(zzwtVar);
                parcel2.writeNoException();
                return true;
            case 3:
                mo10980a(zzafd.m16806a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                mo10979a(zzafi.m16805a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                mo10972a(parcel.readString(), zzafo.m16801a(parcel.readStrongBinder()), zzafj.m16804a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                mo10981a((zzadu) zzgw.m12080a(parcel, zzadu.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzxqVar = queryLocalInterface2 instanceof zzxq ? (zzxq) queryLocalInterface2 : new zzxt(readStrongBinder2);
                }
                mo10971b(zzxqVar);
                parcel2.writeNoException();
                return true;
            case 8:
                mo10978a(zzafr.m16799a(parcel.readStrongBinder()), (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                mo10982a((PublisherAdViewOptions) zzgw.m12080a(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                mo10977a(zzafw.m16798a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                mo10976a((zzajc) zzgw.m12080a(parcel, zzajc.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                mo10975a(zzajj.m16727a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
