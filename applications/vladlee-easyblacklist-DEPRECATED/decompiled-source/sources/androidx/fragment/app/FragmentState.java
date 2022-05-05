package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState.class */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new C0915y();

    /* renamed from: a */
    final String f3632a;

    /* renamed from: b */
    final String f3633b;

    /* renamed from: c */
    final boolean f3634c;

    /* renamed from: d */
    final int f3635d;

    /* renamed from: e */
    final int f3636e;

    /* renamed from: f */
    final String f3637f;

    /* renamed from: g */
    final boolean f3638g;

    /* renamed from: h */
    final boolean f3639h;

    /* renamed from: i */
    final boolean f3640i;

    /* renamed from: j */
    final Bundle f3641j;

    /* renamed from: k */
    final boolean f3642k;

    /* renamed from: l */
    final int f3643l;

    /* renamed from: m */
    Bundle f3644m;

    /* renamed from: n */
    Fragment f3645n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentState(Parcel parcel) {
        this.f3632a = parcel.readString();
        this.f3633b = parcel.readString();
        boolean z = true;
        this.f3634c = parcel.readInt() != 0;
        this.f3635d = parcel.readInt();
        this.f3636e = parcel.readInt();
        this.f3637f = parcel.readString();
        this.f3638g = parcel.readInt() != 0;
        this.f3639h = parcel.readInt() != 0;
        this.f3640i = parcel.readInt() != 0;
        this.f3641j = parcel.readBundle();
        if (parcel.readInt() == 0) {
            z = false;
        }
        this.f3642k = z;
        this.f3644m = parcel.readBundle();
        this.f3643l = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentState(Fragment fragment) {
        this.f3632a = fragment.getClass().getName();
        this.f3633b = fragment.f3583o;
        this.f3634c = fragment.f3590v;
        this.f3635d = fragment.f3550E;
        this.f3636e = fragment.f3551F;
        this.f3637f = fragment.f3552G;
        this.f3638g = fragment.f3555J;
        this.f3639h = fragment.f3589u;
        this.f3640i = fragment.f3554I;
        this.f3641j = fragment.f3584p;
        this.f3642k = fragment.f3553H;
        this.f3643l = fragment.f3571Z.ordinal();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f3632a);
        sb.append(" (");
        sb.append(this.f3633b);
        sb.append(")}:");
        if (this.f3634c) {
            sb.append(" fromLayout");
        }
        if (this.f3636e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f3636e));
        }
        String str = this.f3637f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f3637f);
        }
        if (this.f3638g) {
            sb.append(" retainInstance");
        }
        if (this.f3639h) {
            sb.append(" removing");
        }
        if (this.f3640i) {
            sb.append(" detached");
        }
        if (this.f3642k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3632a);
        parcel.writeString(this.f3633b);
        parcel.writeInt(this.f3634c ? 1 : 0);
        parcel.writeInt(this.f3635d);
        parcel.writeInt(this.f3636e);
        parcel.writeString(this.f3637f);
        parcel.writeInt(this.f3638g ? 1 : 0);
        parcel.writeInt(this.f3639h ? 1 : 0);
        parcel.writeInt(this.f3640i ? 1 : 0);
        parcel.writeBundle(this.f3641j);
        parcel.writeInt(this.f3642k ? 1 : 0);
        parcel.writeBundle(this.f3644m);
        parcel.writeInt(this.f3643l);
    }
}
