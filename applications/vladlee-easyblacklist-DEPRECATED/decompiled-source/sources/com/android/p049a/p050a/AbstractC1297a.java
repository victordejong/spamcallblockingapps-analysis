package com.android.p049a.p050a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* renamed from: com.android.a.a.a */
/* loaded from: classes-dex2jar.jar:com/android/a/a/a.class */
public interface AbstractC1297a extends IInterface {

    /* renamed from: com.android.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/android/a/a/a$a.class */
    public static abstract class AbstractBinderC1298a extends Binder implements AbstractC1297a {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.android.a.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/android/a/a/a$a$a.class */
        public static final class C1299a implements AbstractC1297a {

            /* renamed from: a */
            public static AbstractC1297a f5477a;

            /* renamed from: b */
            private IBinder f5478b;

            C1299a(IBinder iBinder) {
                this.f5478b = iBinder;
            }

            @Override // com.android.p049a.p050a.AbstractC1297a
            /* renamed from: a */
            public final int mo6372a(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!this.f5478b.transact(1, obtain, obtain2, 0) && AbstractBinderC1298a.m6374a() != null) {
                        return AbstractBinderC1298a.m6374a().mo6372a(i, str, str2);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.p049a.p050a.AbstractC1297a
            /* renamed from: a */
            public final Bundle mo6371a(int i, String str, String str2, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f5478b.transact(2, obtain, obtain2, 0) && AbstractBinderC1298a.m6374a() != null) {
                        return AbstractBinderC1298a.m6374a().mo6371a(i, str, str2, bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.p049a.p050a.AbstractC1297a
            /* renamed from: a */
            public final Bundle mo6370a(int i, String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (!this.f5478b.transact(4, obtain, obtain2, 0) && AbstractBinderC1298a.m6374a() != null) {
                        return AbstractBinderC1298a.m6374a().mo6370a(i, str, str2, str3);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.p049a.p050a.AbstractC1297a
            /* renamed from: a */
            public final Bundle mo6369a(int i, String str, String str2, String str3, String str4) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    if (!this.f5478b.transact(3, obtain, obtain2, 0) && AbstractBinderC1298a.m6374a() != null) {
                        return AbstractBinderC1298a.m6374a().mo6369a(i, str, str2, str3, str4);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.p049a.p050a.AbstractC1297a
            /* renamed from: a */
            public final Bundle mo6368a(int i, String str, List<String> list, String str2, String str3, String str4) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeStringList(list);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    if (!this.f5478b.transact(7, obtain, obtain2, 0) && AbstractBinderC1298a.m6374a() != null) {
                        return AbstractBinderC1298a.m6374a().mo6368a(i, str, list, str2, str3, str4);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f5478b;
            }

            @Override // com.android.p049a.p050a.AbstractC1297a
            /* renamed from: b */
            public final int mo6367b(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!this.f5478b.transact(5, obtain, obtain2, 0) && AbstractBinderC1298a.m6374a() != null) {
                        return AbstractBinderC1298a.m6374a().mo6367b(i, str, str2);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.p049a.p050a.AbstractC1297a
            /* renamed from: c */
            public final int mo6366c(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!this.f5478b.transact(6, obtain, obtain2, 0) && AbstractBinderC1298a.m6374a() != null) {
                        return AbstractBinderC1298a.m6374a().mo6366c(i, str, str2);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: a */
        public static AbstractC1297a m6374a() {
            return C1299a.f5477a;
        }

        /* renamed from: a */
        public static AbstractC1297a m6373a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1297a)) ? new C1299a(iBinder) : (AbstractC1297a) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            int a;
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        a = mo6372a(parcel.readInt(), parcel.readString(), parcel.readString());
                        break;
                    case 2:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a2 = mo6371a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (a2 != null) {
                            parcel2.writeInt(1);
                            a2.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 3:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a3 = mo6369a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        if (a3 != null) {
                            parcel2.writeInt(1);
                            a3.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 4:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a4 = mo6370a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        if (a4 != null) {
                            parcel2.writeInt(1);
                            a4.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        a = mo6367b(parcel.readInt(), parcel.readString(), parcel.readString());
                        break;
                    case 6:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        a = mo6366c(parcel.readInt(), parcel.readString(), parcel.readString());
                        break;
                    case 7:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a5 = mo6368a(parcel.readInt(), parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        if (a5 != null) {
                            parcel2.writeInt(1);
                            a5.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeNoException();
                parcel2.writeInt(a);
                return true;
            }
            parcel2.writeString("com.android.vending.billing.IInAppBillingService");
            return true;
        }
    }

    /* renamed from: a */
    int mo6372a(int i, String str, String str2);

    /* renamed from: a */
    Bundle mo6371a(int i, String str, String str2, Bundle bundle);

    /* renamed from: a */
    Bundle mo6370a(int i, String str, String str2, String str3);

    /* renamed from: a */
    Bundle mo6369a(int i, String str, String str2, String str3, String str4);

    /* renamed from: a */
    Bundle mo6368a(int i, String str, List<String> list, String str2, String str3, String str4);

    /* renamed from: b */
    int mo6367b(int i, String str, String str2);

    /* renamed from: c */
    int mo6366c(int i, String str, String str2);
}
