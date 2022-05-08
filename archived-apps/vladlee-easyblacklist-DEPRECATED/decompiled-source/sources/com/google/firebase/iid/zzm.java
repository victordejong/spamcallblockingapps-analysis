package com.google.firebase.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzm.class */
public class zzm implements Parcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new C3197ak();

    /* renamed from: a */
    private Messenger f19168a;

    /* renamed from: b */
    private AbstractC3207au f19169b;

    /* renamed from: com.google.firebase.iid.zzm$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzm$a.class */
    public static final class C3236a extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z);
            }
            if (!FirebaseInstanceId.m549f()) {
                return zzm.class;
            }
            Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
            return zzm.class;
        }
    }

    public zzm(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f19168a = new Messenger(iBinder);
        } else {
            this.f19169b = new C3206at(iBinder);
        }
    }

    /* renamed from: a */
    private final IBinder m426a() {
        Messenger messenger = this.f19168a;
        return messenger != null ? messenger.getBinder() : this.f19169b.asBinder();
    }

    /* renamed from: a */
    public final void m425a(Message message) {
        Messenger messenger = this.f19168a;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f19169b.mo513a(message);
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
            return m426a().equals(((zzm) obj).m426a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return m426a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f19168a;
        parcel.writeStrongBinder(messenger != null ? messenger.getBinder() : this.f19169b.asBinder());
    }
}
