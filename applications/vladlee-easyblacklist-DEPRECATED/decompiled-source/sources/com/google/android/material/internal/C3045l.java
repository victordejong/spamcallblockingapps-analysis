package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.material.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/l.class */
final class C3045l implements Parcelable.ClassLoaderCreator<ParcelableSparseArray> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new ParcelableSparseArray(parcel, null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final /* synthetic */ ParcelableSparseArray createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ParcelableSparseArray(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new ParcelableSparseArray[i];
    }
}
