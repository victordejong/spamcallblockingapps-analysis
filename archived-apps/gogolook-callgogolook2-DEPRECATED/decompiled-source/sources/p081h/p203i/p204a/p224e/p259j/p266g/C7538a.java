package p081h.p203i.p204a.p224e.p259j.p266g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.g.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a.class */
public class C7538a implements IInterface {

    /* renamed from: a */
    public final IBinder f17653a;

    /* renamed from: b */
    public final String f17654b;

    public C7538a(IBinder iBinder, String str) {
        this.f17653a = iBinder;
        this.f17654b = str;
    }

    /* renamed from: G0 */
    public final Parcel m20384G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17654b);
        return obtain;
    }

    /* renamed from: a */
    public final void m20383a(int i, Parcel parcel) throws RemoteException {
        try {
            this.f17653a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17653a;
    }
}
