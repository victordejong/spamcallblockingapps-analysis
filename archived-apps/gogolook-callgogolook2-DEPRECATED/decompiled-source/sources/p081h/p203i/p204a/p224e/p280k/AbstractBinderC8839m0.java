package p081h.p203i.p204a.p224e.p280k;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p274o.BinderC8527u;
import p081h.p203i.p204a.p224e.p259j.p274o.C8502d0;
/* renamed from: h.i.a.e.k.m0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/m0.class */
public abstract class AbstractBinderC8839m0 extends BinderC8527u implements AbstractC8837l0 {
    public AbstractBinderC8839m0() {
        super("com.google.android.gms.location.ILocationListener");
    }

    /* renamed from: a */
    public static AbstractC8837l0 m16882a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return queryLocalInterface instanceof AbstractC8837l0 ? (AbstractC8837l0) queryLocalInterface : new C8841n0(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.BinderC8527u
    /* renamed from: a */
    public final boolean mo16883a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        onLocationChanged((Location) C8502d0.m17891a(parcel, Location.CREATOR));
        return true;
    }
}
