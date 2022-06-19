package androidx.viewpager.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$m$a.class */
final class ViewPager$m$a implements Parcelable.ClassLoaderCreator<ViewPager.m> {
    ViewPager$m$a() {
    }

    /* renamed from: a */
    public ViewPager.m createFromParcel(Parcel parcel) {
        return new ViewPager.m(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public ViewPager.m createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ViewPager.m(parcel, classLoader);
    }

    /* renamed from: c */
    public ViewPager.m[] newArray(int i) {
        return new ViewPager.m[i];
    }
}
