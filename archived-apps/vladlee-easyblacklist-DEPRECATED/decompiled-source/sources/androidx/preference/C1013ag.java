package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.TwoStatePreference;
/* renamed from: androidx.preference.ag */
/* loaded from: classes-dex2jar.jar:androidx/preference/ag.class */
final class C1013ag implements Parcelable.Creator<TwoStatePreference.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TwoStatePreference.SavedState createFromParcel(Parcel parcel) {
        return new TwoStatePreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ TwoStatePreference.SavedState[] newArray(int i) {
        return new TwoStatePreference.SavedState[i];
    }
}
