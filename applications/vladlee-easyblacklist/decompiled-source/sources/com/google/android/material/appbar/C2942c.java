package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.appbar.AppBarLayout;
/* renamed from: com.google.android.material.appbar.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/c.class */
final class C2942c implements Parcelable.ClassLoaderCreator<AppBarLayout.BaseBehavior.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new AppBarLayout.BaseBehavior.SavedState(parcel, null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final /* synthetic */ AppBarLayout.BaseBehavior.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new AppBarLayout.BaseBehavior.SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new AppBarLayout.BaseBehavior.SavedState[i];
    }
}
