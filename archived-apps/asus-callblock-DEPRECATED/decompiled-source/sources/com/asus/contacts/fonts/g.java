package com.asus.contacts.fonts;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/g.class */
public interface g extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/g$a.class */
    public static abstract class a extends Binder implements g {

        /* renamed from: com.asus.contacts.fonts.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/g$a$a.class */
        private static final class C0075a implements g {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f2659a;

            C0075a(IBinder iBinder) {
                this.f2659a = iBinder;
            }

            @Override // com.asus.contacts.fonts.g
            public final void a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceCallback");
                    this.f2659a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.g
            public final void a(String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceCallback");
                    obtain.writeStringArray(strArr);
                    this.f2659a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f2659a;
            }

            @Override // com.asus.contacts.fonts.g
            public final void b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceCallback");
                    this.f2659a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.asus.contacts.fonts.FontManagerServiceCallback");
        }

        public static g a(IBinder iBinder) {
            g aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.asus.contacts.fonts.FontManagerServiceCallback");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof g)) ? new C0075a(iBinder) : (g) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = true;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceCallback");
                    b();
                    parcel2.writeNoException();
                    break;
                case 2:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceCallback");
                    a(parcel.createStringArray());
                    parcel2.writeNoException();
                    break;
                case 3:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceCallback");
                    a();
                    parcel2.writeNoException();
                    break;
                case 1598968902:
                    parcel2.writeString("com.asus.contacts.fonts.FontManagerServiceCallback");
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    void a();

    void a(String[] strArr);

    void b();
}
