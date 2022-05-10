package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import p131c.p161d.p170b.p224d.p238d.p243d.C3300h;
@KeepForSdk
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BinderWrapper.class */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new C3300h();

    /* renamed from: a */
    public IBinder f23410a;

    public BinderWrapper() {
        this.f23410a = null;
    }

    public BinderWrapper(Parcel parcel) {
        this.f23410a = null;
        this.f23410a = parcel.readStrongBinder();
    }

    public /* synthetic */ BinderWrapper(Parcel parcel, C3300h hVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f23410a);
    }
}
