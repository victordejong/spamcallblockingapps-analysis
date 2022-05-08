package p081h.p203i.p204a.p224e.p259j.p264e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.e.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/e/a.class */
public class C7513a implements IInterface {

    /* renamed from: a */
    public final IBinder f17592a;

    /* renamed from: b */
    public final String f17593b;

    public C7513a(IBinder iBinder, String str) {
        this.f17592a = iBinder;
        this.f17593b = str;
    }

    /* renamed from: G0 */
    public final Parcel m20403G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17593b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m20402a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f17592a.transact(i, parcel, obtain, 0);
                obtain.readException();
                parcel.recycle();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17592a;
    }
}
