package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.MultiSelectListPreference;
/* renamed from: androidx.preference.h */
/* loaded from: classes-dex2jar.jar:androidx/preference/h.class */
final class C1020h implements Parcelable.Creator<MultiSelectListPreference.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MultiSelectListPreference.SavedState createFromParcel(Parcel parcel) {
        return new MultiSelectListPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MultiSelectListPreference.SavedState[] newArray(int i) {
        return new MultiSelectListPreference.SavedState[i];
    }
}
