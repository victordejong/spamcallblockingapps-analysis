package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentTabHost;
/* renamed from: androidx.fragment.app.aa */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/aa.class */
final class C0866aa implements Parcelable.Creator<FragmentTabHost.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FragmentTabHost.SavedState createFromParcel(Parcel parcel) {
        return new FragmentTabHost.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FragmentTabHost.SavedState[] newArray(int i) {
        return new FragmentTabHost.SavedState[i];
    }
}
