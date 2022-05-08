package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.e5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/e5.class */
public abstract class AbstractBinderC7221e5 extends BinderC7453x2 implements AbstractC7208d5 {
    public AbstractBinderC7221e5() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo20811c();
                parcel2.writeNoException();
                return true;
            case 2:
                mo20816a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                mo20809m(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                mo20812b(C7465y2.m20511a(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                mo20815a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo20813b(parcel.readString(), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float O = mo20818O();
                parcel2.writeNoException();
                parcel2.writeFloat(O);
                return true;
            case 8:
                boolean U = mo20817U();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, U);
                return true;
            case 9:
                String f = mo20810f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 10:
                mo20808o(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo20814a(AbstractBinderC7239fa.m20927a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
