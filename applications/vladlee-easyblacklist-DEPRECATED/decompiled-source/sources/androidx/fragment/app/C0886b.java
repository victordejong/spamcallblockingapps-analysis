package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.fragment.app.b */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b.class */
final class C0886b implements Parcelable.Creator<BackStackState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BackStackState createFromParcel(Parcel parcel) {
        return new BackStackState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BackStackState[] newArray(int i) {
        return new BackStackState[i];
    }
}
