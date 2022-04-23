package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.AppCompatSpinner;
/* renamed from: androidx.appcompat.widget.ab */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab.class */
final class C0429ab implements Parcelable.Creator<AppCompatSpinner.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AppCompatSpinner.SavedState createFromParcel(Parcel parcel) {
        return new AppCompatSpinner.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AppCompatSpinner.SavedState[] newArray(int i) {
        return new AppCompatSpinner.SavedState[i];
    }
}
