package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.ActionMenuPresenter;
/* renamed from: androidx.appcompat.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
final class C0505h implements Parcelable.Creator<ActionMenuPresenter.SavedState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActionMenuPresenter.SavedState createFromParcel(Parcel parcel) {
        return new ActionMenuPresenter.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ActionMenuPresenter.SavedState[] newArray(int i) {
        return new ActionMenuPresenter.SavedState[i];
    }
}
