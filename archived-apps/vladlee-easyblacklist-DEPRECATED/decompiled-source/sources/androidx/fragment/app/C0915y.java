package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.fragment.app.y */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/y.class */
final class C0915y implements Parcelable.Creator<FragmentState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FragmentState createFromParcel(Parcel parcel) {
        return new FragmentState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FragmentState[] newArray(int i) {
        return new FragmentState[i];
    }
}
