package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzant.class */
public abstract class zzant extends zzgt implements zzanu {
    public zzant() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    /* renamed from: a */
    public static zzanu m16635a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
        return queryLocalInterface instanceof zzanu ? (zzanu) queryLocalInterface : new zzanw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String e = mo16506e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 3:
                List i3 = mo16502i();
                parcel2.writeNoException();
                parcel2.writeList(i3);
                return true;
            case 4:
                String g = mo16504g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 5:
                zzaee q = mo16500q();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, q);
                return true;
            case 6:
                String f = mo16505f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 7:
                String C = mo16518C();
                parcel2.writeNoException();
                parcel2.writeString(C);
                return true;
            case 8:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 9:
                String D = mo16517D();
                parcel2.writeNoException();
                parcel2.writeString(D);
                return true;
            case 10:
                String s = mo16499s();
                parcel2.writeNoException();
                parcel2.writeString(s);
                return true;
            case 11:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 12:
                zzadw d = mo16507d();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, d);
                return true;
            case 13:
                IObjectWrapper R = mo16512R();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, R);
                return true;
            case 14:
                IObjectWrapper N = mo16514N();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, N);
                return true;
            case 15:
                IObjectWrapper h = mo16503h();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, h);
                return true;
            case 16:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, extras);
                return true;
            case 17:
                boolean J = mo16515J();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, J);
                return true;
            case 18:
                boolean U = mo16511U();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, U);
                return true;
            case 19:
                mo16501m();
                parcel2.writeNoException();
                return true;
            case 20:
                mo16508c(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                mo16509a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                mo16510a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 23:
                float D0 = mo16516D0();
                parcel2.writeNoException();
                parcel2.writeFloat(D0);
                return true;
            case 24:
                float videoDuration = getVideoDuration();
                parcel2.writeNoException();
                parcel2.writeFloat(videoDuration);
                return true;
            case 25:
                float N0 = mo16513N0();
                parcel2.writeNoException();
                parcel2.writeFloat(N0);
                return true;
            default:
                return false;
        }
    }
}
