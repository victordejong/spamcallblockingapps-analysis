package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.ra */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ra.class */
public abstract class AbstractBinderC7389ra extends BinderC7453x2 implements AbstractC7377qa {
    public AbstractBinderC7389ra() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String i3 = mo20724i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                return true;
            case 3:
                List k = mo20722k();
                parcel2.writeNoException();
                parcel2.writeList(k);
                return true;
            case 4:
                String j = mo20723j();
                parcel2.writeNoException();
                parcel2.writeString(j);
                return true;
            case 5:
                AbstractC7398s7 o = mo20719o();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, o);
                return true;
            case 6:
                String h = mo20725h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 7:
                String q = mo20717q();
                parcel2.writeNoException();
                parcel2.writeString(q);
                return true;
            case 8:
                double p = mo20718p();
                parcel2.writeNoException();
                parcel2.writeDouble(p);
                return true;
            case 9:
                String r = mo20716r();
                parcel2.writeNoException();
                parcel2.writeString(r);
                return true;
            case 10:
                String n = mo20720n();
                parcel2.writeNoException();
                parcel2.writeString(n);
                return true;
            case 11:
                AbstractC7359p5 videoController = getVideoController();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, videoController);
                return true;
            case 12:
                AbstractC7361p7 g = mo20726g();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, g);
                return true;
            case 13:
                AbstractC7106b y = mo20713y();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, y);
                return true;
            case 14:
                AbstractC7106b w = mo20715w();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, w);
                return true;
            case 15:
                AbstractC7106b m = mo20721m();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, m);
                return true;
            case 16:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, extras);
                return true;
            case 17:
                boolean x = mo20714x();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, x);
                return true;
            case 18:
                boolean A = mo20730A();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, A);
                return true;
            case 19:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 20:
                mo20729a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                mo20728a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                mo20727b(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
