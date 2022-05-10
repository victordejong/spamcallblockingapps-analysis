package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagd.class */
public abstract class zzagd extends zzgt implements zzage {
    public zzagd() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzafz zzafzVar;
        switch (i) {
            case 2:
                String e = mo14192e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 3:
                List i3 = mo14187i();
                parcel2.writeNoException();
                parcel2.writeList(i3);
                return true;
            case 4:
                String g = mo14189g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 5:
                zzaee q = mo14185q();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, q);
                return true;
            case 6:
                String f = mo14190f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 7:
                String C = mo14206C();
                parcel2.writeNoException();
                parcel2.writeString(C);
                return true;
            case 8:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 9:
                String D = mo14205D();
                parcel2.writeNoException();
                parcel2.writeString(D);
                return true;
            case 10:
                String s = mo14184s();
                parcel2.writeNoException();
                parcel2.writeString(s);
                return true;
            case 11:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 12:
                String a = mo14202a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case 13:
                destroy();
                parcel2.writeNoException();
                return true;
            case 14:
                zzadw d = mo14193d();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, d);
                return true;
            case 15:
                mo14201a((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean b = mo14195b((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, b);
                return true;
            case 17:
                mo14191e((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                IObjectWrapper v = mo14181v();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, v);
                return true;
            case 19:
                IObjectWrapper h = mo14188h();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, h);
                return true;
            case 20:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, extras);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzafzVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    zzafzVar = queryLocalInterface instanceof zzafz ? (zzafz) queryLocalInterface : new zzagb(readStrongBinder);
                }
                mo14200a(zzafzVar);
                parcel2.writeNoException();
                return true;
            case 22:
                mo14194b0();
                parcel2.writeNoException();
                return true;
            case 23:
                List A1 = mo14207A1();
                parcel2.writeNoException();
                parcel2.writeList(A1);
                return true;
            case 24:
                boolean a1 = mo14196a1();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, a1);
                return true;
            case 25:
                mo14198a(zzyc.m11121a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                mo14199a(zzxy.m11123a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 27:
                mo14204Z();
                parcel2.writeNoException();
                return true;
            case 28:
                mo14203Z1();
                parcel2.writeNoException();
                return true;
            case 29:
                zzadz u0 = mo14182u0();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, u0);
                return true;
            case 30:
                boolean t0 = mo14183t0();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, t0);
                return true;
            case 31:
                zzyn l = mo14186l();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, l);
                return true;
            case 32:
                mo14197a(zzyl.m11117a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
