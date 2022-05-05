package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.Preference;
/* renamed from: androidx.preference.l */
/* loaded from: classes-dex2jar.jar:androidx/preference/l.class */
final class C1024l implements Parcelable.Creator<Preference.BaseSavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Preference.BaseSavedState createFromParcel(Parcel parcel) {
        return new Preference.BaseSavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Preference.BaseSavedState[] newArray(int i) {
        return new Preference.BaseSavedState[i];
    }
}
