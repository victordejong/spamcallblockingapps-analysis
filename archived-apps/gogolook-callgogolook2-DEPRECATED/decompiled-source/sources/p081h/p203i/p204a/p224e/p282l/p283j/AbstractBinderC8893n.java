package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e;
/* renamed from: h.i.a.e.l.j.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/n.class */
public abstract class AbstractBinderC8893n extends BinderC8537e implements AbstractC8892m {
    public AbstractBinderC8893n() {
        super("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e
    /* renamed from: a */
    public final boolean mo16820a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo16796s();
        parcel2.writeNoException();
        return true;
    }
}
