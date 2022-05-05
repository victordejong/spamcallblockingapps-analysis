package androidx.customview.view;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.customview.view.a */
/* loaded from: classes-dex2jar.jar:androidx/customview/view/a.class */
final class C0804a implements Parcelable.ClassLoaderCreator<AbsSavedState> {
    /* renamed from: a */
    private static AbsSavedState m8046a(Parcel parcel, ClassLoader classLoader) {
        if (parcel.readParcelable(classLoader) == null) {
            return AbsSavedState.f3304c;
        }
        throw new IllegalStateException("superState must be null");
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m8046a(parcel, null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final /* synthetic */ AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return m8046a(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new AbsSavedState[i];
    }
}
