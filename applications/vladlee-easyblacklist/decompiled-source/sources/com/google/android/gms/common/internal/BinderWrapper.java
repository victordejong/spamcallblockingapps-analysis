package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BinderWrapper.class */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new C1668j();

    /* renamed from: a */
    private IBinder f6727a;

    public BinderWrapper() {
        this.f6727a = null;
    }

    public BinderWrapper(IBinder iBinder) {
        this.f6727a = null;
        this.f6727a = iBinder;
    }

    private BinderWrapper(Parcel parcel) {
        this.f6727a = null;
        this.f6727a = parcel.readStrongBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ BinderWrapper(Parcel parcel, byte b) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f6727a);
    }
}
