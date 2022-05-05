package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.LinearLayoutManager;
/* renamed from: androidx.recyclerview.widget.v */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/v.class */
final class C1144v implements Parcelable.Creator<LinearLayoutManager.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LinearLayoutManager.SavedState createFromParcel(Parcel parcel) {
        return new LinearLayoutManager.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LinearLayoutManager.SavedState[] newArray(int i) {
        return new LinearLayoutManager.SavedState[i];
    }
}
