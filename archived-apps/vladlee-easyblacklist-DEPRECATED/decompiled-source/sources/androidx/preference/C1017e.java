package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.ListPreference;
/* renamed from: androidx.preference.e */
/* loaded from: classes-dex2jar.jar:androidx/preference/e.class */
final class C1017e implements Parcelable.Creator<ListPreference.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ListPreference.SavedState createFromParcel(Parcel parcel) {
        return new ListPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ListPreference.SavedState[] newArray(int i) {
        return new ListPreference.SavedState[i];
    }
}
