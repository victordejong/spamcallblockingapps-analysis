package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.SeekBarPreference;
/* renamed from: androidx.preference.af */
/* loaded from: classes-dex2jar.jar:androidx/preference/af.class */
final class C1012af implements Parcelable.Creator<SeekBarPreference.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SeekBarPreference.SavedState createFromParcel(Parcel parcel) {
        return new SeekBarPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SeekBarPreference.SavedState[] newArray(int i) {
        return new SeekBarPreference.SavedState[i];
    }
}
