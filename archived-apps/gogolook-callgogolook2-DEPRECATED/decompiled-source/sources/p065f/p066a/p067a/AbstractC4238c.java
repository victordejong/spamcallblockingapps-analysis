package p065f.p066a.p067a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p065f.p066a.p067a.AbstractC4232a;
/* renamed from: f.a.a.c */
/* loaded from: classes-dex2jar.jar:f/a/a/c.class */
public interface AbstractC4238c extends IInterface {

    /* renamed from: f.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:f/a/a/c$a.class */
    public static abstract class AbstractBinderC4239a extends Binder implements AbstractC4238c {
        public static final String DESCRIPTOR = "android.support.customtabs.IPostMessageService";
        public static final int TRANSACTION_onMessageChannelReady = 2;
        public static final int TRANSACTION_onPostMessage = 3;

        /* renamed from: f.a.a.c$a$a */
        /* loaded from: classes-dex2jar.jar:f/a/a/c$a$a.class */
        public static class C4240a implements AbstractC4238c {

            /* renamed from: a */
            public IBinder f10286a;

            public C4240a(IBinder iBinder) {
                this.f10286a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10286a;
            }

            @Override // p065f.p066a.p067a.AbstractC4238c
            public void onMessageChannelReady(AbstractC4232a aVar, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.IPostMessageService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f10286a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4238c
            public void onPostMessage(AbstractC4232a aVar, String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.IPostMessageService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f10286a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC4239a() {
            attachInterface(this, "android.support.customtabs.IPostMessageService");
        }

        public static AbstractC4238c asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.IPostMessageService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC4238c)) ? new C4240a(iBinder) : (AbstractC4238c) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle = null;
            Bundle bundle2 = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC4232a asInterface = AbstractC4232a.AbstractBinderC4233a.asInterface(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                onMessageChannelReady(asInterface, bundle);
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC4232a asInterface2 = AbstractC4232a.AbstractBinderC4233a.asInterface(parcel.readStrongBinder());
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                onPostMessage(asInterface2, readString, bundle2);
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.customtabs.IPostMessageService");
                return true;
            }
        }
    }

    void onMessageChannelReady(AbstractC4232a aVar, Bundle bundle) throws RemoteException;

    void onPostMessage(AbstractC4232a aVar, String str, Bundle bundle) throws RemoteException;
}
