package com.tmobile.tmoid.helperlib.impl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/IAMAgentCallback.class */
public interface IAMAgentCallback extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/IAMAgentCallback$Stub.class */
    public static abstract class Stub extends Binder implements IAMAgentCallback {

        /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/IAMAgentCallback$Stub$Proxy.class */
        private static class Proxy implements IAMAgentCallback {

            /* renamed from: a */
            private IBinder f14765a;

            @Override // com.tmobile.tmoid.helperlib.impl.IAMAgentCallback
            /* renamed from: G0 */
            public void mo5006G0(APIResponse aPIResponse) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.impl.IAMAgentCallback");
                    if (aPIResponse != null) {
                        obtain.writeInt(1);
                        aPIResponse.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14765a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14765a;
            }
        }

        public Stub() {
            attachInterface(this, "com.tmobile.tmoid.helperlib.impl.IAMAgentCallback");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tmobile.tmoid.helperlib.impl.IAMAgentCallback");
                mo5006G0(parcel.readInt() != 0 ? APIResponse.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("com.tmobile.tmoid.helperlib.impl.IAMAgentCallback");
                return true;
            }
        }
    }

    /* renamed from: G0 */
    void mo5006G0(APIResponse aPIResponse) throws RemoteException;
}
