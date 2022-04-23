package android.support.p013a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: android.support.a.a */
/* loaded from: classes-dex2jar.jar:android/support/a/a.class */
public interface AbstractC0152a extends IInterface {

    /* renamed from: android.support.a.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/a/a$a.class */
    public static abstract class AbstractBinderC0153a extends Binder implements AbstractC0152a {

        /* renamed from: android.support.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/a/a$a$a.class */
        private static final class C0154a implements AbstractC0152a {

            /* renamed from: a */
            private IBinder f353a;

            C0154a(IBinder iBinder) {
                this.f353a = iBinder;
            }

            @Override // android.support.p013a.AbstractC0152a
            /* renamed from: a */
            public final void mo10121a(int i, Uri uri, boolean z, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    obtain.writeInt(i);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z ? 1 : 0);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f353a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p013a.AbstractC0152a
            /* renamed from: a */
            public final void mo10120a(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f353a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p013a.AbstractC0152a
            /* renamed from: a */
            public final void mo10119a(Bundle bundle) {
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
                    this.f353a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p013a.AbstractC0152a
            /* renamed from: a */
            public final void mo10118a(String str, Bundle bundle) {
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
                    this.f353a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f353a;
            }

            @Override // android.support.p013a.AbstractC0152a
            /* renamed from: b */
            public final void mo10117b(String str, Bundle bundle) {
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
                    this.f353a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: a */
        public static AbstractC0152a m10122a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0152a)) ? new C0154a(iBinder) : (AbstractC0152a) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            Bundle bundle2 = null;
            Bundle bundle3 = null;
            Bundle bundle4 = null;
            Bundle bundle5 = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                int readInt = parcel.readInt();
                if (parcel.readInt() != 0) {
                    bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo10120a(readInt, bundle4);
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo10118a(readString, bundle3);
            } else if (i == 4) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo10119a(bundle2);
            } else if (i == 5) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                String readString2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo10117b(readString2, bundle);
            } else if (i == 6) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                int readInt2 = parcel.readInt();
                Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                boolean z = parcel.readInt() != 0;
                if (parcel.readInt() != 0) {
                    bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo10121a(readInt2, uri, z, bundle5);
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.customtabs.ICustomTabsCallback");
                return true;
            }
            parcel2.writeNoException();
            return true;
        }
    }

    /* renamed from: a */
    void mo10121a(int i, Uri uri, boolean z, Bundle bundle);

    /* renamed from: a */
    void mo10120a(int i, Bundle bundle);

    /* renamed from: a */
    void mo10119a(Bundle bundle);

    /* renamed from: a */
    void mo10118a(String str, Bundle bundle);

    /* renamed from: b */
    void mo10117b(String str, Bundle bundle);
}
