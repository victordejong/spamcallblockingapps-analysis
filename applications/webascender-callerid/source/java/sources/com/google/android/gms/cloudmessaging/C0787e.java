package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudmessaging.AbstractC0784c;
/* renamed from: com.google.android.gms.cloudmessaging.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/e.class */
public class C0787e implements Parcelable {
    public static final Parcelable.Creator<C0787e> CREATOR = new C0790g();

    /* renamed from: f */
    private Messenger f3284f;

    /* renamed from: g */
    private AbstractC0784c f3285g;

    /* renamed from: com.google.android.gms.cloudmessaging.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/e$a.class */
    public static final class C0788a extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if ("com.google.android.gms.iid.MessengerCompat".equals(str)) {
                if (!(Log.isLoggable("CloudMessengerCompat", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("CloudMessengerCompat", 3)))) {
                    return C0787e.class;
                }
                Log.d("CloudMessengerCompat", "Using renamed FirebaseIidMessengerCompat class");
                return C0787e.class;
            }
            return super.loadClass(str, z);
        }
    }

    public C0787e(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3284f = new Messenger(iBinder);
        } else {
            this.f3285g = new AbstractC0784c.a(iBinder);
        }
    }

    /* renamed from: a */
    private final IBinder m3723a() {
        Messenger messenger = this.f3284f;
        return messenger != null ? messenger.getBinder() : this.f3285g.asBinder();
    }

    /* renamed from: b */
    public final void m3722b(Message message) throws RemoteException {
        Messenger messenger = this.f3284f;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f3285g.m3737g0(message);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return m3723a().equals(((C0787e) obj).m3723a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return m3723a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f3284f;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f3285g.asBinder());
        }
    }
}
