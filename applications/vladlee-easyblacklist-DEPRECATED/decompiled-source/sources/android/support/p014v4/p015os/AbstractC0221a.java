package android.support.p014v4.p015os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: android.support.v4.os.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/a.class */
public interface AbstractC0221a extends IInterface {

    /* renamed from: android.support.v4.os.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/a$a.class */
    public static abstract class AbstractBinderC0222a extends Binder implements AbstractC0221a {

        /* renamed from: android.support.v4.os.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/os/a$a$a.class */
        private static final class C0223a implements AbstractC0221a {

            /* renamed from: a */
            private IBinder f493a;

            C0223a(IBinder iBinder) {
                this.f493a = iBinder;
            }

            @Override // android.support.p014v4.p015os.AbstractC0221a
            /* renamed from: a */
            public final void mo9981a(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.os.IResultReceiver");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f493a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f493a;
            }
        }

        public AbstractBinderC0222a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        /* renamed from: a */
        public static AbstractC0221a m9982a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0221a)) ? new C0223a(iBinder) : (AbstractC0221a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                mo9981a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
        }
    }

    /* renamed from: a */
    void mo9981a(int i, Bundle bundle);
}
