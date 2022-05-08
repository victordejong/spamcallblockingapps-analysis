package androidx.media2.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.media2.session.IMediaController;
import androidx.versionedparcelable.ParcelImpl;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/IMediaSessionService.class */
public interface IMediaSessionService extends IInterface {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/IMediaSessionService$Stub.class */
    public static abstract class Stub extends Binder implements IMediaSessionService {
        public static final String DESCRIPTOR = "androidx.media2.session.IMediaSessionService";
        public static final int TRANSACTION_connect = 1;

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/IMediaSessionService$Stub$Proxy.class */
        public static class Proxy implements IMediaSessionService {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // androidx.media2.session.IMediaSessionService
            public void connect(IMediaController iMediaController, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iMediaController != null ? iMediaController.asBinder() : null);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMediaSessionService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IMediaSessionService)) ? new Proxy(iBinder) : (IMediaSessionService) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                connect(IMediaController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }
    }

    void connect(IMediaController iMediaController, ParcelImpl parcelImpl) throws RemoteException;
}
