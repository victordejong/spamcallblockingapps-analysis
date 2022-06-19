package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$d;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$e.class */
public class StaggeredGridLayoutManager$e implements Parcelable {
    public static final Parcelable.Creator<StaggeredGridLayoutManager$e> CREATOR = new C0370a();

    /* renamed from: f */
    int f2007f;

    /* renamed from: g */
    int f2008g;

    /* renamed from: h */
    int f2009h;

    /* renamed from: i */
    int[] f2010i;

    /* renamed from: j */
    int f2011j;

    /* renamed from: k */
    int[] f2012k;

    /* renamed from: l */
    List<StaggeredGridLayoutManager$d.C0368a> f2013l;

    /* renamed from: m */
    boolean f2014m;

    /* renamed from: n */
    boolean f2015n;

    /* renamed from: o */
    boolean f2016o;

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$e$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$e$a.class */
    static final class C0370a implements Parcelable.Creator<StaggeredGridLayoutManager$e> {
        C0370a() {
        }

        /* renamed from: a */
        public StaggeredGridLayoutManager$e createFromParcel(Parcel parcel) {
            return new StaggeredGridLayoutManager$e(parcel);
        }

        /* renamed from: b */
        public StaggeredGridLayoutManager$e[] newArray(int i) {
            return new StaggeredGridLayoutManager$e[i];
        }
    }

    public StaggeredGridLayoutManager$e() {
    }

    StaggeredGridLayoutManager$e(Parcel parcel) {
        this.f2007f = parcel.readInt();
        this.f2008g = parcel.readInt();
        int readInt = parcel.readInt();
        this.f2009h = readInt;
        if (readInt > 0) {
            int[] iArr = new int[readInt];
            this.f2010i = iArr;
            parcel.readIntArray(iArr);
        }
        int readInt2 = parcel.readInt();
        this.f2011j = readInt2;
        if (readInt2 > 0) {
            int[] iArr2 = new int[readInt2];
            this.f2012k = iArr2;
            parcel.readIntArray(iArr2);
        }
        this.f2014m = parcel.readInt() == 1;
        this.f2015n = parcel.readInt() == 1;
        this.f2016o = parcel.readInt() == 1;
        this.f2013l = parcel.readArrayList(StaggeredGridLayoutManager$d.C0368a.class.getClassLoader());
    }

    public StaggeredGridLayoutManager$e(StaggeredGridLayoutManager$e staggeredGridLayoutManager$e) {
        this.f2009h = staggeredGridLayoutManager$e.f2009h;
        this.f2007f = staggeredGridLayoutManager$e.f2007f;
        this.f2008g = staggeredGridLayoutManager$e.f2008g;
        this.f2010i = staggeredGridLayoutManager$e.f2010i;
        this.f2011j = staggeredGridLayoutManager$e.f2011j;
        this.f2012k = staggeredGridLayoutManager$e.f2012k;
        this.f2014m = staggeredGridLayoutManager$e.f2014m;
        this.f2015n = staggeredGridLayoutManager$e.f2015n;
        this.f2016o = staggeredGridLayoutManager$e.f2016o;
        this.f2013l = staggeredGridLayoutManager$e.f2013l;
    }

    /* renamed from: a */
    void m5027a() {
        this.f2010i = null;
        this.f2009h = 0;
        this.f2007f = -1;
        this.f2008g = -1;
    }

    /* renamed from: b */
    void m5026b() {
        this.f2010i = null;
        this.f2009h = 0;
        this.f2011j = 0;
        this.f2012k = null;
        this.f2013l = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2007f);
        parcel.writeInt(this.f2008g);
        parcel.writeInt(this.f2009h);
        if (this.f2009h > 0) {
            parcel.writeIntArray(this.f2010i);
        }
        parcel.writeInt(this.f2011j);
        if (this.f2011j > 0) {
            parcel.writeIntArray(this.f2012k);
        }
        parcel.writeInt(this.f2014m ? 1 : 0);
        parcel.writeInt(this.f2015n ? 1 : 0);
        parcel.writeInt(this.f2016o ? 1 : 0);
        parcel.writeList(this.f2013l);
    }
}
