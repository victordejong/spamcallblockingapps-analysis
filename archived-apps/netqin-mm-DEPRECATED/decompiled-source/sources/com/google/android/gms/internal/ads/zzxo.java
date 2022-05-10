package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxo.class */
public abstract class zzxo extends zzgt implements zzxp {
    public zzxo() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzxc b = mo11131b(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR), parcel.readString(), zzane.m16637a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, b);
                return true;
            case 2:
                zzxc c = mo11128c(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR), parcel.readString(), zzane.m16637a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, c);
                return true;
            case 3:
                zzwz a = mo11134a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readString(), zzane.m16637a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, a);
                return true;
            case 4:
                zzxs M = mo11138M(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, M);
                return true;
            case 5:
                zzaei d = mo11126d(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, d);
                return true;
            case 6:
                zzaud c2 = mo11129c(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzane.m16637a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, c2);
                return true;
            case 7:
                zzarn H = mo11139H(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, H);
                return true;
            case 8:
                zzaqy f = mo11125f(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, f);
                return true;
            case 9:
                zzxs d2 = mo11127d(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, d2);
                return true;
            case 10:
                zzxc a2 = mo11136a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, a2);
                return true;
            case 11:
                zzael b2 = mo11133b(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, b2);
                return true;
            case 12:
                zzauy b3 = mo11130b(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readString(), zzane.m16637a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, b3);
                return true;
            case 13:
                zzxc a3 = mo11135a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR), parcel.readString(), zzane.m16637a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, a3);
                return true;
            case 14:
                zzaxl b4 = mo11132b(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzane.m16637a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, b4);
                return true;
            case 15:
                zzaqp a4 = mo11137a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzane.m16637a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, a4);
                return true;
            default:
                return false;
        }
    }
}
