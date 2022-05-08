package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* renamed from: androidx.recyclerview.widget.ao */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ao.class */
final class C1103ao implements Parcelable.Creator<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem createFromParcel(Parcel parcel) {
        return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[] newArray(int i) {
        return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[i];
    }
}
