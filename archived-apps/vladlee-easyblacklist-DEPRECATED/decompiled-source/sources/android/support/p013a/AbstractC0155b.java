package android.support.p013a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.p013a.AbstractC0152a;
/* renamed from: android.support.a.b */
/* loaded from: classes-dex2jar.jar:android/support/a/b.class */
public interface AbstractC0155b extends IInterface {

    /* renamed from: android.support.a.b$a */
    /* loaded from: classes-dex2jar.jar:android/support/a/b$a.class */
    public static abstract class AbstractBinderC0156a extends Binder implements AbstractC0155b {
        public AbstractBinderC0156a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1598968902) {
                switch (i) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        parcel.readLong();
                        boolean a = mo8877a();
                        parcel2.writeNoException();
                        parcel2.writeInt(a ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean a2 = mo8876a(AbstractC0152a.AbstractBinderC0153a.m10122a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(a2 ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0152a a3 = AbstractC0152a.AbstractBinderC0153a.m10122a(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            Uri.CREATOR.createFromParcel(parcel);
                        }
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                        parcel.createTypedArrayList(Bundle.CREATOR);
                        boolean b = mo8874b(a3);
                        parcel2.writeNoException();
                        parcel2.writeInt(b ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle b2 = mo8875b();
                        parcel2.writeNoException();
                        if (b2 != null) {
                            parcel2.writeInt(1);
                            b2.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0152a a4 = AbstractC0152a.AbstractBinderC0153a.m10122a(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean c = mo8873c(a4);
                        parcel2.writeNoException();
                        parcel2.writeInt(c ? 1 : 0);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0152a a5 = AbstractC0152a.AbstractBinderC0153a.m10122a(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            Uri.CREATOR.createFromParcel(parcel);
                        }
                        boolean d = mo8872d(a5);
                        parcel2.writeNoException();
                        parcel2.writeInt(d ? 1 : 0);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0152a a6 = AbstractC0152a.AbstractBinderC0153a.m10122a(parcel.readStrongBinder());
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int e = mo8871e(a6);
                        parcel2.writeNoException();
                        parcel2.writeInt(e);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0152a a7 = AbstractC0152a.AbstractBinderC0153a.m10122a(parcel.readStrongBinder());
                        parcel.readInt();
                        if (parcel.readInt() != 0) {
                            Uri.CREATOR.createFromParcel(parcel);
                        }
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean f = mo8870f(a7);
                        parcel2.writeNoException();
                        parcel2.writeInt(f ? 1 : 0);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("android.support.customtabs.ICustomTabsService");
                return true;
            }
        }
    }

    /* renamed from: a */
    boolean mo8877a();

    /* renamed from: a */
    boolean mo8876a(AbstractC0152a aVar);

    /* renamed from: b */
    Bundle mo8875b();

    /* renamed from: b */
    boolean mo8874b(AbstractC0152a aVar);

    /* renamed from: c */
    boolean mo8873c(AbstractC0152a aVar);

    /* renamed from: d */
    boolean mo8872d(AbstractC0152a aVar);

    /* renamed from: e */
    int mo8871e(AbstractC0152a aVar);

    /* renamed from: f */
    boolean mo8870f(AbstractC0152a aVar);
}
