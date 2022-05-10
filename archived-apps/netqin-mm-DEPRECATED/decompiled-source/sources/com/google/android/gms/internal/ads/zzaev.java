package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaev.class */
public abstract class zzaev extends zzgt implements zzaew {
    public zzaev() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                IObjectWrapper v = mo14226v();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, v);
                return true;
            case 3:
                String e = mo14233e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 4:
                List i3 = mo14228i();
                parcel2.writeNoException();
                parcel2.writeList(i3);
                return true;
            case 5:
                String g = mo14230g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 6:
                zzaee p0 = mo14227p0();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, p0);
                return true;
            case 7:
                String f = mo14231f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 8:
                String C = mo14238C();
                parcel2.writeNoException();
                parcel2.writeString(C);
                return true;
            case 9:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, extras);
                return true;
            case 10:
                destroy();
                parcel2.writeNoException();
                return true;
            case 11:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 12:
                mo14236a((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean b = mo14235b((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, b);
                return true;
            case 14:
                mo14232e((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                zzadw d = mo14234d();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, d);
                return true;
            case 16:
                IObjectWrapper h = mo14229h();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, h);
                return true;
            case 17:
                String a = mo14237a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            default:
                return false;
        }
    }
}
