package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.EditTextPreference;
/* renamed from: androidx.preference.b */
/* loaded from: classes-dex2jar.jar:androidx/preference/b.class */
final class C1014b implements Parcelable.Creator<EditTextPreference.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ EditTextPreference.SavedState createFromParcel(Parcel parcel) {
        return new EditTextPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ EditTextPreference.SavedState[] newArray(int i) {
        return new EditTextPreference.SavedState[i];
    }
}
