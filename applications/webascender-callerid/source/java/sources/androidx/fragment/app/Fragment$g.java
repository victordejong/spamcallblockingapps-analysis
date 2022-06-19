package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$g.class */
public class Fragment$g implements Parcelable {
    public static final Parcelable.Creator<Fragment$g> CREATOR = new C0249a();

    /* renamed from: f */
    final Bundle f1415f;

    /* renamed from: androidx.fragment.app.Fragment$g$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$g$a.class */
    class C0249a implements Parcelable.ClassLoaderCreator<Fragment$g> {
        C0249a() {
        }

        /* renamed from: a */
        public Fragment$g createFromParcel(Parcel parcel) {
            return new Fragment$g(parcel, null);
        }

        /* renamed from: b */
        public Fragment$g createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new Fragment$g(parcel, classLoader);
        }

        /* renamed from: c */
        public Fragment$g[] newArray(int i) {
            return new Fragment$g[i];
        }
    }

    public Fragment$g(Bundle bundle) {
        this.f1415f = bundle;
    }

    Fragment$g(Parcel parcel, ClassLoader classLoader) {
        Bundle readBundle = parcel.readBundle();
        this.f1415f = readBundle;
        if (classLoader == null || readBundle == null) {
            return;
        }
        readBundle.setClassLoader(classLoader);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f1415f);
    }
}
