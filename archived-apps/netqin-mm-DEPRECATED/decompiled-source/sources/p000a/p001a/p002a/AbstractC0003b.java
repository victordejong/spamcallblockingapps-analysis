package p000a.p001a.p002a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import p000a.p001a.p002a.AbstractC0000a;
/* renamed from: a.a.a.b */
/* loaded from: classes-dex2jar.jar:a/a/a/b.class */
public interface AbstractC0003b extends IInterface {

    /* renamed from: a.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/b$a.class */
    public static abstract class AbstractBinderC0004a extends Binder implements AbstractC0003b {
        public AbstractBinderC0004a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Bundle bundle = null;
                Uri uri = null;
                Bundle bundle2 = null;
                Bundle bundle3 = null;
                Bundle bundle4 = null;
                Bundle bundle5 = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean d = mo38820d(parcel.readLong());
                        parcel2.writeNoException();
                        parcel2.writeInt(d ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean a = mo38827a(AbstractC0000a.AbstractBinderC0001a.m39341a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(a ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0000a a2 = AbstractC0000a.AbstractBinderC0001a.m39341a(parcel.readStrongBinder());
                        Uri uri2 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean a3 = mo38824a(a2, uri2, bundle4, parcel.createTypedArrayList(Bundle.CREATOR));
                        parcel2.writeNoException();
                        parcel2.writeInt(a3 ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle b = mo38821b(readString, bundle3);
                        parcel2.writeNoException();
                        if (b != null) {
                            parcel2.writeInt(1);
                            b.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0000a a4 = AbstractC0000a.AbstractBinderC0001a.m39341a(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean b2 = mo38823b(a4, bundle2);
                        parcel2.writeNoException();
                        parcel2.writeInt(b2 ? 1 : 0);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0000a a5 = AbstractC0000a.AbstractBinderC0001a.m39341a(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        }
                        boolean a6 = mo38825a(a5, uri);
                        parcel2.writeNoException();
                        parcel2.writeInt(a6 ? 1 : 0);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0000a a7 = AbstractC0000a.AbstractBinderC0001a.m39341a(parcel.readStrongBinder());
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int b3 = mo38822b(a7, readString2, bundle);
                        parcel2.writeNoException();
                        parcel2.writeInt(b3);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC0000a a8 = AbstractC0000a.AbstractBinderC0001a.m39341a(parcel.readStrongBinder());
                        int readInt = parcel.readInt();
                        Uri uri3 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean a9 = mo38826a(a8, readInt, uri3, bundle5);
                        parcel2.writeNoException();
                        parcel2.writeInt(a9 ? 1 : 0);
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
    boolean mo38827a(AbstractC0000a aVar) throws RemoteException;

    /* renamed from: a */
    boolean mo38826a(AbstractC0000a aVar, int i, Uri uri, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    boolean mo38825a(AbstractC0000a aVar, Uri uri) throws RemoteException;

    /* renamed from: a */
    boolean mo38824a(AbstractC0000a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException;

    /* renamed from: b */
    int mo38822b(AbstractC0000a aVar, String str, Bundle bundle) throws RemoteException;

    /* renamed from: b */
    Bundle mo38821b(String str, Bundle bundle) throws RemoteException;

    /* renamed from: b */
    boolean mo38823b(AbstractC0000a aVar, Bundle bundle) throws RemoteException;

    /* renamed from: d */
    boolean mo38820d(long j) throws RemoteException;
}
