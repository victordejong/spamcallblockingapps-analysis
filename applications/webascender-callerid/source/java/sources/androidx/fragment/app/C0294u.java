package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.fragment.app.u */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/u.class */
public final class C0294u implements Parcelable {
    public static final Parcelable.Creator<C0294u> CREATOR = new C0295a();

    /* renamed from: f */
    final String f1581f;

    /* renamed from: g */
    final String f1582g;

    /* renamed from: h */
    final boolean f1583h;

    /* renamed from: i */
    final int f1584i;

    /* renamed from: j */
    final int f1585j;

    /* renamed from: k */
    final String f1586k;

    /* renamed from: l */
    final boolean f1587l;

    /* renamed from: m */
    final boolean f1588m;

    /* renamed from: n */
    final boolean f1589n;

    /* renamed from: o */
    final Bundle f1590o;

    /* renamed from: p */
    final boolean f1591p;

    /* renamed from: q */
    final int f1592q;

    /* renamed from: r */
    Bundle f1593r;

    /* renamed from: androidx.fragment.app.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/u$a.class */
    class C0295a implements Parcelable.Creator<C0294u> {
        C0295a() {
        }

        /* renamed from: a */
        public C0294u createFromParcel(Parcel parcel) {
            return new C0294u(parcel);
        }

        /* renamed from: b */
        public C0294u[] newArray(int i) {
            return new C0294u[i];
        }
    }

    C0294u(Parcel parcel) {
        this.f1581f = parcel.readString();
        this.f1582g = parcel.readString();
        this.f1583h = parcel.readInt() != 0;
        this.f1584i = parcel.readInt();
        this.f1585j = parcel.readInt();
        this.f1586k = parcel.readString();
        this.f1587l = parcel.readInt() != 0;
        this.f1588m = parcel.readInt() != 0;
        this.f1589n = parcel.readInt() != 0;
        this.f1590o = parcel.readBundle();
        this.f1591p = parcel.readInt() != 0;
        this.f1593r = parcel.readBundle();
        this.f1592q = parcel.readInt();
    }

    public C0294u(Fragment fragment) {
        this.f1581f = fragment.getClass().getName();
        this.f1582g = fragment.mWho;
        this.f1583h = fragment.mFromLayout;
        this.f1584i = fragment.mFragmentId;
        this.f1585j = fragment.mContainerId;
        this.f1586k = fragment.mTag;
        this.f1587l = fragment.mRetainInstance;
        this.f1588m = fragment.mRemoving;
        this.f1589n = fragment.mDetached;
        this.f1590o = fragment.mArguments;
        this.f1591p = fragment.mHidden;
        this.f1592q = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1581f);
        sb.append(" (");
        sb.append(this.f1582g);
        sb.append(")}:");
        if (this.f1583h) {
            sb.append(" fromLayout");
        }
        if (this.f1585j != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1585j));
        }
        String str = this.f1586k;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f1586k);
        }
        if (this.f1587l) {
            sb.append(" retainInstance");
        }
        if (this.f1588m) {
            sb.append(" removing");
        }
        if (this.f1589n) {
            sb.append(" detached");
        }
        if (this.f1591p) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1581f);
        parcel.writeString(this.f1582g);
        parcel.writeInt(this.f1583h ? 1 : 0);
        parcel.writeInt(this.f1584i);
        parcel.writeInt(this.f1585j);
        parcel.writeString(this.f1586k);
        parcel.writeInt(this.f1587l ? 1 : 0);
        parcel.writeInt(this.f1588m ? 1 : 0);
        parcel.writeInt(this.f1589n ? 1 : 0);
        parcel.writeBundle(this.f1590o);
        parcel.writeInt(this.f1591p ? 1 : 0);
        parcel.writeBundle(this.f1593r);
        parcel.writeInt(this.f1592q);
    }
}
