package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$y$a.class */
final class RecyclerView$y$a implements Parcelable.ClassLoaderCreator<RecyclerView.y> {
    RecyclerView$y$a() {
    }

    /* renamed from: a */
    public RecyclerView.y createFromParcel(Parcel parcel) {
        return new RecyclerView.y(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public RecyclerView.y createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new RecyclerView.y(parcel, classLoader);
    }

    /* renamed from: c */
    public RecyclerView.y[] newArray(int i) {
        return new RecyclerView.y[i];
    }
}
