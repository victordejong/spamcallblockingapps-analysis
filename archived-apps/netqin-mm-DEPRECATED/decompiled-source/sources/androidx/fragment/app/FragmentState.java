package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import p012b.p063m.p064a.C1057e;
import p012b.p063m.p064a.LayoutInflater$Factory2C1062h;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState.class */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new C0228a();

    /* renamed from: a */
    public final String f1348a;

    /* renamed from: b */
    public final String f1349b;

    /* renamed from: c */
    public final boolean f1350c;

    /* renamed from: d */
    public final int f1351d;

    /* renamed from: e */
    public final int f1352e;

    /* renamed from: f */
    public final String f1353f;

    /* renamed from: g */
    public final boolean f1354g;

    /* renamed from: h */
    public final boolean f1355h;

    /* renamed from: i */
    public final boolean f1356i;

    /* renamed from: j */
    public final Bundle f1357j;

    /* renamed from: k */
    public final boolean f1358k;

    /* renamed from: l */
    public final int f1359l;

    /* renamed from: m */
    public Bundle f1360m;

    /* renamed from: n */
    public Fragment f1361n;

    /* renamed from: androidx.fragment.app.FragmentState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState$a.class */
    public static final class C0228a implements Parcelable.Creator<FragmentState> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    public FragmentState(Parcel parcel) {
        this.f1348a = parcel.readString();
        this.f1349b = parcel.readString();
        boolean z = true;
        this.f1350c = parcel.readInt() != 0;
        this.f1351d = parcel.readInt();
        this.f1352e = parcel.readInt();
        this.f1353f = parcel.readString();
        this.f1354g = parcel.readInt() != 0;
        this.f1355h = parcel.readInt() != 0;
        this.f1356i = parcel.readInt() != 0;
        this.f1357j = parcel.readBundle();
        if (parcel.readInt() == 0) {
            z = false;
        }
        this.f1358k = z;
        this.f1360m = parcel.readBundle();
        this.f1359l = parcel.readInt();
    }

    public FragmentState(Fragment fragment) {
        this.f1348a = fragment.getClass().getName();
        this.f1349b = fragment.f1286e;
        this.f1350c = fragment.f1294m;
        this.f1351d = fragment.f1303v;
        this.f1352e = fragment.f1304w;
        this.f1353f = fragment.f1305x;
        this.f1354g = fragment.f1260A;
        this.f1355h = fragment.f1293l;
        this.f1356i = fragment.f1307z;
        this.f1357j = fragment.f1287f;
        this.f1358k = fragment.f1306y;
        this.f1359l = fragment.f1276Q.ordinal();
    }

    /* renamed from: a */
    public Fragment m38330a(ClassLoader classLoader, C1057e eVar) {
        if (this.f1361n == null) {
            Bundle bundle = this.f1357j;
            if (bundle != null) {
                bundle.setClassLoader(classLoader);
            }
            Fragment a = eVar.mo34766a(classLoader, this.f1348a);
            this.f1361n = a;
            a.m38367m(this.f1357j);
            Bundle bundle2 = this.f1360m;
            if (bundle2 != null) {
                bundle2.setClassLoader(classLoader);
                this.f1361n.f1283b = this.f1360m;
            } else {
                this.f1361n.f1283b = new Bundle();
            }
            Fragment fragment = this.f1361n;
            fragment.f1286e = this.f1349b;
            fragment.f1294m = this.f1350c;
            fragment.f1296o = true;
            fragment.f1303v = this.f1351d;
            fragment.f1304w = this.f1352e;
            fragment.f1305x = this.f1353f;
            fragment.f1260A = this.f1354g;
            fragment.f1293l = this.f1355h;
            fragment.f1307z = this.f1356i;
            fragment.f1306y = this.f1358k;
            fragment.f1276Q = Lifecycle.State.values()[this.f1359l];
            if (LayoutInflater$Factory2C1062h.f4442H) {
                Log.v("FragmentManager", "Instantiated fragment " + this.f1361n);
            }
        }
        return this.f1361n;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1348a);
        sb.append(" (");
        sb.append(this.f1349b);
        sb.append(")}:");
        if (this.f1350c) {
            sb.append(" fromLayout");
        }
        if (this.f1352e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1352e));
        }
        String str = this.f1353f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f1353f);
        }
        if (this.f1354g) {
            sb.append(" retainInstance");
        }
        if (this.f1355h) {
            sb.append(" removing");
        }
        if (this.f1356i) {
            sb.append(" detached");
        }
        if (this.f1358k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1348a);
        parcel.writeString(this.f1349b);
        parcel.writeInt(this.f1350c ? 1 : 0);
        parcel.writeInt(this.f1351d);
        parcel.writeInt(this.f1352e);
        parcel.writeString(this.f1353f);
        parcel.writeInt(this.f1354g ? 1 : 0);
        parcel.writeInt(this.f1355h ? 1 : 0);
        parcel.writeInt(this.f1356i ? 1 : 0);
        parcel.writeBundle(this.f1357j);
        parcel.writeInt(this.f1358k ? 1 : 0);
        parcel.writeBundle(this.f1360m);
        parcel.writeInt(this.f1359l);
    }
}
