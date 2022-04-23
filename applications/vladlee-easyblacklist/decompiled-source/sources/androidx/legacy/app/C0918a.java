package androidx.legacy.app;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.legacy.app.FragmentTabHost;
/* renamed from: androidx.legacy.app.a */
/* loaded from: classes-dex2jar.jar:androidx/legacy/app/a.class */
final class C0918a implements Parcelable.Creator<FragmentTabHost.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FragmentTabHost.SavedState createFromParcel(Parcel parcel) {
        return new FragmentTabHost.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FragmentTabHost.SavedState[] newArray(int i) {
        return new FragmentTabHost.SavedState[i];
    }
}
