package p000a.p001a.p002a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: a.a.a.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a.class */
public interface AbstractC0000a extends IInterface {

    /* renamed from: a.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a$a.class */
    public static abstract class AbstractBinderC0001a extends Binder implements AbstractC0000a {

        /* renamed from: a.a.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:a/a/a/a$a$a.class */
        public static class C0002a implements AbstractC0000a {

            /* renamed from: a */
            public IBinder f0a;

            public C0002a(IBinder iBinder) {
                this.f0a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f0a;
            }

            @Override // p000a.p001a.p002a.AbstractC0000a
            /* renamed from: c */
            public void mo39340c(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f0a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p000a.p001a.p002a.AbstractC0000a
            /* renamed from: j */
            public void mo39339j(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f0a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: a */
        public static AbstractC0000a m39341a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0000a)) ? new C0002a(iBinder) : (AbstractC0000a) queryLocalInterface;
        }
    }

    /* renamed from: c */
    void mo39340c(String str, Bundle bundle) throws RemoteException;

    /* renamed from: j */
    void mo39339j(Bundle bundle) throws RemoteException;
}
