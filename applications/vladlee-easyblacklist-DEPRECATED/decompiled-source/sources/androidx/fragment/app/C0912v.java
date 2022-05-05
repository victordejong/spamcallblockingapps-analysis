package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.fragment.app.v */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/v.class */
final class C0912v implements Parcelable.Creator<FragmentManagerState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FragmentManagerState createFromParcel(Parcel parcel) {
        return new FragmentManagerState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FragmentManagerState[] newArray(int i) {
        return new FragmentManagerState[i];
    }
}
