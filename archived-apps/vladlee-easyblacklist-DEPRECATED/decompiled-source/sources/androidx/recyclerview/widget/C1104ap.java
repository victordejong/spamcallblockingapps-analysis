package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* renamed from: androidx.recyclerview.widget.ap */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ap.class */
final class C1104ap implements Parcelable.Creator<StaggeredGridLayoutManager.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StaggeredGridLayoutManager.SavedState createFromParcel(Parcel parcel) {
        return new StaggeredGridLayoutManager.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ StaggeredGridLayoutManager.SavedState[] newArray(int i) {
        return new StaggeredGridLayoutManager.SavedState[i];
    }
}
