package com.google.firebase.iid;

import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/IMessengerCompat.class */
interface IMessengerCompat extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/IMessengerCompat$Impl.class */
    public static class Impl extends Binder implements IMessengerCompat {
        @NonNull
        private final Handler handler;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Impl(@NonNull Handler handler) {
            this.handler = handler;
            attachInterface(this, "com.google.android.gms.iid.IMessengerCompat");
        }

        @Override // android.os.IInterface
        @NonNull
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i2) throws RemoteException {
            parcel.enforceInterface(getInterfaceDescriptor());
            if (i != 1) {
                return false;
            }
            send(parcel.readInt() != 0 ? (Message) Message.CREATOR.createFromParcel(parcel) : null);
            return true;
        }

        @Override // com.google.firebase.iid.IMessengerCompat
        public void send(@NonNull Message message) throws RemoteException {
            message.arg2 = Binder.getCallingUid();
            this.handler.dispatchMessage(message);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/IMessengerCompat$Proxy.class */
    public static class Proxy implements IMessengerCompat {
        private final IBinder remote;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Proxy(@NonNull IBinder iBinder) {
            this.remote = iBinder;
        }

        @Override // android.os.IInterface
        @NonNull
        public IBinder asBinder() {
            return this.remote;
        }

        @Override // com.google.firebase.iid.IMessengerCompat
        public void send(@NonNull Message message) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
            obtain.writeInt(1);
            message.writeToParcel(obtain, 0);
            try {
                this.remote.transact(1, obtain, null, 1);
            } finally {
                obtain.recycle();
            }
        }
    }

    void send(@NonNull Message message) throws RemoteException;
}
