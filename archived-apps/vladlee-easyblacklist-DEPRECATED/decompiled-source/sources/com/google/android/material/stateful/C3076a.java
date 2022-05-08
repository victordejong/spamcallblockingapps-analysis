package com.google.android.material.stateful;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.material.stateful.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/stateful/a.class */
final class C3076a implements Parcelable.ClassLoaderCreator<ExtendableSavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new ExtendableSavedState(parcel, null, (byte) 0);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final /* synthetic */ ExtendableSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ExtendableSavedState(parcel, classLoader, (byte) 0);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new ExtendableSavedState[i];
    }
}
