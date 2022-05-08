package com.google.android.material.stateful;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;
import androidx.p026b.C0542i;
/* loaded from: classes-dex2jar.jar:com/google/android/material/stateful/ExtendableSavedState.class */
public class ExtendableSavedState extends AbsSavedState {
    public static final Parcelable.Creator<ExtendableSavedState> CREATOR = new C3076a();

    /* renamed from: a */
    public final C0542i<String, Bundle> f18547a;

    private ExtendableSavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f18547a = new C0542i<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f18547a.put(strArr[i], bundleArr[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ExtendableSavedState(Parcel parcel, ClassLoader classLoader, byte b) {
        this(parcel, classLoader);
    }

    public ExtendableSavedState(Parcelable parcelable) {
        super(parcelable);
        this.f18547a = new C0542i<>();
    }

    public String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f18547a + "}";
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        int size = this.f18547a.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = this.f18547a.m8905b(i2);
            bundleArr[i2] = this.f18547a.m8903c(i2);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }
}
