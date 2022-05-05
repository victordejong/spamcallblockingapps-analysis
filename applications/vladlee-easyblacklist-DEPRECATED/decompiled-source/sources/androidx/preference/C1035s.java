package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.PreferenceGroup;
/* renamed from: androidx.preference.s */
/* loaded from: classes-dex2jar.jar:androidx/preference/s.class */
final class C1035s implements Parcelable.Creator<PreferenceGroup.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PreferenceGroup.SavedState createFromParcel(Parcel parcel) {
        return new PreferenceGroup.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PreferenceGroup.SavedState[] newArray(int i) {
        return new PreferenceGroup.SavedState[i];
    }
}
