package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:android/support/v4/os/d.class */
public final class d<T> implements Parcelable.ClassLoaderCreator<T> {

    /* renamed from: a  reason: collision with root package name */
    private final c<T> f182a;

    public d(c<T> cVar) {
        this.f182a = cVar;
    }

    @Override // android.os.Parcelable.Creator
    public final T createFromParcel(Parcel parcel) {
        return this.f182a.a(parcel, null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final T createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.f182a.a(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final T[] newArray(int i) {
        return this.f182a.a(i);
    }
}
