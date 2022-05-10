package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyr.class */
public abstract class zzyr extends zzgt implements zzyo {
    public zzyr() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    /* renamed from: a */
    public static zzyo m11102a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return queryLocalInterface instanceof zzyo ? (zzyo) queryLocalInterface : new zzyq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzyt zzytVar;
        switch (i) {
            case 1:
                mo11109S();
                parcel2.writeNoException();
                return true;
            case 2:
                pause();
                parcel2.writeNoException();
                return true;
            case 3:
                mo11105h(zzgw.m12082a(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean F0 = mo11112F0();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, F0);
                return true;
            case 5:
                int P = mo11110P();
                parcel2.writeNoException();
                parcel2.writeInt(P);
                return true;
            case 6:
                float duration = getDuration();
                parcel2.writeNoException();
                parcel2.writeFloat(duration);
                return true;
            case 7:
                float i0 = mo11104i0();
                parcel2.writeNoException();
                parcel2.writeFloat(i0);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzytVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    zzytVar = queryLocalInterface instanceof zzyt ? (zzyt) queryLocalInterface : new zzyv(readStrongBinder);
                }
                mo11106a(zzytVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float X = mo11108X();
                parcel2.writeNoException();
                parcel2.writeFloat(X);
                return true;
            case 10:
                boolean M1 = mo11111M1();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, M1);
                return true;
            case 11:
                zzyt Y0 = mo11107Y0();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, Y0);
                return true;
            case 12:
                boolean x0 = mo11103x0();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, x0);
                return true;
            case 13:
                stop();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
