package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zzad;
/* renamed from: h.i.a.e.j.o.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/g.class */
public abstract class AbstractBinderC8507g extends BinderC8527u implements AbstractC8505f {
    public AbstractBinderC8507g() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.BinderC8527u
    /* renamed from: a */
    public final boolean mo16883a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo17888a((zzad) C8502d0.m17891a(parcel, zzad.CREATOR));
        return true;
    }
}
