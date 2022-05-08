package com.google.android.material.bottomsheet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* renamed from: com.google.android.material.bottomsheet.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/b.class */
final class C2968b implements Parcelable.ClassLoaderCreator<BottomSheetBehavior.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new BottomSheetBehavior.SavedState(parcel, (ClassLoader) null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final /* synthetic */ BottomSheetBehavior.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new BottomSheetBehavior.SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new BottomSheetBehavior.SavedState[i];
    }
}
