package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.common.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/j.class */
final class C1668j implements Parcelable.Creator<BinderWrapper> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BinderWrapper createFromParcel(Parcel parcel) {
        return new BinderWrapper(parcel, (byte) 0);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BinderWrapper[] newArray(int i) {
        return new BinderWrapper[i];
    }
}
