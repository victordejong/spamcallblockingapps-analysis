package androidx.core.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.widget.NestedScrollView;
/* renamed from: androidx.core.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/i.class */
final class C0784i implements Parcelable.Creator<NestedScrollView.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ NestedScrollView.SavedState createFromParcel(Parcel parcel) {
        return new NestedScrollView.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ NestedScrollView.SavedState[] newArray(int i) {
        return new NestedScrollView.SavedState[i];
    }
}
