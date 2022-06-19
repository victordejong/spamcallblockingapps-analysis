package androidx.coordinatorlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$h$a.class */
final class CoordinatorLayout$h$a implements Parcelable.ClassLoaderCreator<CoordinatorLayout.h> {
    CoordinatorLayout$h$a() {
    }

    /* renamed from: a */
    public CoordinatorLayout.h createFromParcel(Parcel parcel) {
        return new CoordinatorLayout.h(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public CoordinatorLayout.h createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new CoordinatorLayout.h(parcel, classLoader);
    }

    /* renamed from: c */
    public CoordinatorLayout.h[] newArray(int i) {
        return new CoordinatorLayout.h[i];
    }
}
