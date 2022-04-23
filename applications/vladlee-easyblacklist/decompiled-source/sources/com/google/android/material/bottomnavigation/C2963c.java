package com.google.android.material.bottomnavigation;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomnavigation.BottomNavigationPresenter;
/* renamed from: com.google.android.material.bottomnavigation.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/c.class */
final class C2963c implements Parcelable.Creator<BottomNavigationPresenter.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BottomNavigationPresenter.SavedState createFromParcel(Parcel parcel) {
        return new BottomNavigationPresenter.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BottomNavigationPresenter.SavedState[] newArray(int i) {
        return new BottomNavigationPresenter.SavedState[i];
    }
}
