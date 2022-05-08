package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractBinderC8543k;
import p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e;
import p081h.p203i.p204a.p224e.p259j.p275p.C8538f;
/* renamed from: h.i.a.e.l.j.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/r.class */
public abstract class AbstractBinderC8897r extends BinderC8537e implements AbstractC8896q {
    public AbstractBinderC8897r() {
        super("com.google.android.gms.maps.internal.IOnMarkerClickListener");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e
    /* renamed from: a */
    public final boolean mo16820a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        boolean a = mo16797a(AbstractBinderC8543k.m17851a(parcel.readStrongBinder()));
        parcel2.writeNoException();
        C8538f.m17855a(parcel2, a);
        return true;
    }
}
