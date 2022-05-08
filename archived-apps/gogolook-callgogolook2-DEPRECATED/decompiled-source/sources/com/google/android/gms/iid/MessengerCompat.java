package com.google.android.gms.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p081h.p203i.p204a.p224e.p258i.AbstractC7159o;
import p081h.p203i.p204a.p224e.p258i.C7160p;
import p081h.p203i.p204a.p224e.p258i.C7162r;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/iid/MessengerCompat.class */
public class MessengerCompat implements ReflectedParcelable {
    public static final Parcelable.Creator<MessengerCompat> CREATOR = new C7162r();

    /* renamed from: a */
    public Messenger f6729a;

    /* renamed from: b */
    public AbstractC7159o f6730b;

    public MessengerCompat(IBinder iBinder) {
        AbstractC7159o oVar;
        if (Build.VERSION.SDK_INT >= 21) {
            this.f6729a = new Messenger(iBinder);
            return;
        }
        if (iBinder == null) {
            oVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.iid.IMessengerCompat");
            oVar = queryLocalInterface instanceof AbstractC7159o ? (AbstractC7159o) queryLocalInterface : new C7160p(iBinder);
        }
        this.f6730b = oVar;
    }

    /* renamed from: a */
    public final IBinder m31857a() {
        Messenger messenger = this.f6729a;
        return messenger != null ? messenger.getBinder() : this.f6730b.asBinder();
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
            return m31857a().equals(((MessengerCompat) obj).m31857a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return m31857a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f6729a;
        parcel.writeStrongBinder(messenger != null ? messenger.getBinder() : this.f6730b.asBinder());
    }
}
