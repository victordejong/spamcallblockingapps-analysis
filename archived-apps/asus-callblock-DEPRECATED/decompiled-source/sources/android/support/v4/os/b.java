package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:android/support/v4/os/b.class */
public final class b {

    /* loaded from: classes-dex2jar.jar:android/support/v4/os/b$a.class */
    public static final class a<T> implements Parcelable.Creator<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f181a;

        public a(c<T> cVar) {
            this.f181a = cVar;
        }

        @Override // android.os.Parcelable.Creator
        public final T createFromParcel(Parcel parcel) {
            return this.f181a.a(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public final T[] newArray(int i) {
            return this.f181a.a(i);
        }
    }
}
