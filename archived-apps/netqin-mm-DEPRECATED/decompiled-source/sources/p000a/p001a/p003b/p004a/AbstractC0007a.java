package p000a.p001a.p003b.p004a;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: a.a.b.a.a */
/* loaded from: classes-dex2jar.jar:a/a/b/a/a.class */
public interface AbstractC0007a extends IInterface {

    /* renamed from: a.a.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:a/a/b/a/a$a.class */
    public static abstract class AbstractBinderC0008a extends Binder implements AbstractC0007a {
        public AbstractBinderC0008a() {
            attachInterface(this, "android.support.v4.app.INotificationSideChannel");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                mo38584a(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                mo38585a(parcel.readString(), parcel.readInt(), parcel.readString());
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                mo38583m(parcel.readString());
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.v4.app.INotificationSideChannel");
                return true;
            }
        }
    }

    /* renamed from: a */
    void mo38585a(String str, int i, String str2) throws RemoteException;

    /* renamed from: a */
    void mo38584a(String str, int i, String str2, Notification notification) throws RemoteException;

    /* renamed from: m */
    void mo38583m(String str) throws RemoteException;
}
