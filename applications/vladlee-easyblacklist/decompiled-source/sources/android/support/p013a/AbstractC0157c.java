package android.support.p013a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.p013a.AbstractC0152a;
/* renamed from: android.support.a.c */
/* loaded from: classes-dex2jar.jar:android/support/a/c.class */
public interface AbstractC0157c extends IInterface {

    /* renamed from: android.support.a.c$a */
    /* loaded from: classes-dex2jar.jar:android/support/a/c$a.class */
    public static abstract class AbstractBinderC0158a extends Binder implements AbstractC0157c {
        public AbstractBinderC0158a() {
            attachInterface(this, "android.support.customtabs.IPostMessageService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            Bundle bundle2 = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC0152a a = AbstractC0152a.AbstractBinderC0153a.m10122a(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo8868a(a, bundle);
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC0152a a2 = AbstractC0152a.AbstractBinderC0153a.m10122a(parcel.readStrongBinder());
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo8867a(a2, readString, bundle2);
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.customtabs.IPostMessageService");
                return true;
            }
            parcel2.writeNoException();
            return true;
        }
    }

    /* renamed from: a */
    void mo8868a(AbstractC0152a aVar, Bundle bundle);

    /* renamed from: a */
    void mo8867a(AbstractC0152a aVar, String str, Bundle bundle);
}
