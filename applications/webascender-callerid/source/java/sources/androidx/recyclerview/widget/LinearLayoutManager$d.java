package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$d.class */
public class LinearLayoutManager$d implements Parcelable {
    public static final Parcelable.Creator<LinearLayoutManager$d> CREATOR = new C0359a();

    /* renamed from: f */
    int f1914f;

    /* renamed from: g */
    int f1915g;

    /* renamed from: h */
    boolean f1916h;

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$d$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$d$a.class */
    static final class C0359a implements Parcelable.Creator<LinearLayoutManager$d> {
        C0359a() {
        }

        /* renamed from: a */
        public LinearLayoutManager$d createFromParcel(Parcel parcel) {
            return new LinearLayoutManager$d(parcel);
        }

        /* renamed from: b */
        public LinearLayoutManager$d[] newArray(int i) {
            return new LinearLayoutManager$d[i];
        }
    }

    public LinearLayoutManager$d() {
    }

    LinearLayoutManager$d(Parcel parcel) {
        this.f1914f = parcel.readInt();
        this.f1915g = parcel.readInt();
        this.f1916h = parcel.readInt() != 1 ? false : true;
    }

    public LinearLayoutManager$d(LinearLayoutManager$d linearLayoutManager$d) {
        this.f1914f = linearLayoutManager$d.f1914f;
        this.f1915g = linearLayoutManager$d.f1915g;
        this.f1916h = linearLayoutManager$d.f1916h;
    }

    /* renamed from: a */
    boolean m5300a() {
        return this.f1914f >= 0;
    }

    /* renamed from: b */
    void m5299b() {
        this.f1914f = -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1914f);
        parcel.writeInt(this.f1915g);
        parcel.writeInt(this.f1916h ? 1 : 0);
    }
}
