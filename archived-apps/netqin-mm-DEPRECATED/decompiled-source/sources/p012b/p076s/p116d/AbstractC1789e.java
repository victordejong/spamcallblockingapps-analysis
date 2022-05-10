package p012b.p076s.p116d;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.versionedparcelable.ParcelImpl;
import p012b.p076s.p116d.AbstractC1783c;
/* renamed from: b.s.d.e */
/* loaded from: classes-dex2jar.jar:b/s/d/e.class */
public interface AbstractC1789e extends IInterface {

    /* renamed from: b.s.d.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/d/e$a.class */
    public static abstract class AbstractBinderC1790a extends Binder implements AbstractC1789e {
        public AbstractBinderC1790a() {
            attachInterface(this, "androidx.media2.session.IMediaSessionService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("androidx.media2.session.IMediaSessionService");
                mo32080a(AbstractC1783c.AbstractBinderC1784a.m32098a(parcel.readStrongBinder()), parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("androidx.media2.session.IMediaSessionService");
                return true;
            }
        }
    }

    /* renamed from: a */
    void mo32080a(AbstractC1783c cVar, ParcelImpl parcelImpl) throws RemoteException;
}
