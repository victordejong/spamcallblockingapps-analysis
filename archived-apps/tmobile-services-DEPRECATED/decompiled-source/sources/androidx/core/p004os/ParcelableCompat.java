package androidx.core.p004os;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* renamed from: androidx.core.os.ParcelableCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/ParcelableCompat.class */
public final class ParcelableCompat {

    /* renamed from: androidx.core.os.ParcelableCompat$ParcelableCompatCreatorHoneycombMR2 */
    /* loaded from: classes-dex2jar.jar:androidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2.class */
    static class ParcelableCompatCreatorHoneycombMR2<T> implements Parcelable.ClassLoaderCreator<T> {

        /* renamed from: a */
        private final ParcelableCompatCreatorCallbacks<T> f3094a;

        @Override // android.os.Parcelable.Creator
        public T createFromParcel(Parcel parcel) {
            return this.f3094a.createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return this.f3094a.createFromParcel(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public T[] newArray(int i) {
            return this.f3094a.newArray(i);
        }
    }

    private ParcelableCompat() {
    }
}
