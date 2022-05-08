package p081h.p203i.p204a.p224e.p259j.p265f;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.f.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/f/a.class */
public class C7529a implements IInterface {

    /* renamed from: a */
    public final IBinder f17650a;

    /* renamed from: b */
    public final String f17651b;

    public C7529a(IBinder iBinder, String str) {
        this.f17650a = iBinder;
        this.f17651b = str;
    }

    /* renamed from: G0 */
    public final Parcel m20394G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17651b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m20393a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f17650a.transact(i, parcel, obtain, 0);
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
        return this.f17650a;
    }

    /* renamed from: b */
    public final void m20392b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17650a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: c */
    public final void m20391c(int i, Parcel parcel) throws RemoteException {
        try {
            this.f17650a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
