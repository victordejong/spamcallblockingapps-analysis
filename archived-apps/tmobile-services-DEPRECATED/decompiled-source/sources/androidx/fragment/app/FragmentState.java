package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState.class */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: androidx.fragment.app.FragmentState.1
        /* renamed from: a */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* renamed from: b */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    };

    /* renamed from: f */
    final String f3797f;

    /* renamed from: g */
    final String f3798g;

    /* renamed from: h */
    final boolean f3799h;

    /* renamed from: i */
    final int f3800i;

    /* renamed from: j */
    final int f3801j;

    /* renamed from: k */
    final String f3802k;

    /* renamed from: l */
    final boolean f3803l;

    /* renamed from: m */
    final boolean f3804m;

    /* renamed from: n */
    final boolean f3805n;

    /* renamed from: o */
    final Bundle f3806o;

    /* renamed from: p */
    final boolean f3807p;

    /* renamed from: q */
    final int f3808q;

    /* renamed from: r */
    Bundle f3809r;

    FragmentState(Parcel parcel) {
        this.f3797f = parcel.readString();
        this.f3798g = parcel.readString();
        boolean z = true;
        this.f3799h = parcel.readInt() != 0;
        this.f3800i = parcel.readInt();
        this.f3801j = parcel.readInt();
        this.f3802k = parcel.readString();
        this.f3803l = parcel.readInt() != 0;
        this.f3804m = parcel.readInt() != 0;
        this.f3805n = parcel.readInt() != 0;
        this.f3806o = parcel.readBundle();
        if (parcel.readInt() == 0) {
            z = false;
        }
        this.f3807p = z;
        this.f3809r = parcel.readBundle();
        this.f3808q = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentState(Fragment fragment) {
        this.f3797f = fragment.getClass().getName();
        this.f3798g = fragment.mWho;
        this.f3799h = fragment.mFromLayout;
        this.f3800i = fragment.mFragmentId;
        this.f3801j = fragment.mContainerId;
        this.f3802k = fragment.mTag;
        this.f3803l = fragment.mRetainInstance;
        this.f3804m = fragment.mRemoving;
        this.f3805n = fragment.mDetached;
        this.f3806o = fragment.mArguments;
        this.f3807p = fragment.mHidden;
        this.f3808q = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f3797f);
        sb.append(" (");
        sb.append(this.f3798g);
        sb.append(")}:");
        if (this.f3799h) {
            sb.append(" fromLayout");
        }
        if (this.f3801j != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f3801j));
        }
        String str = this.f3802k;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f3802k);
        }
        if (this.f3803l) {
            sb.append(" retainInstance");
        }
        if (this.f3804m) {
            sb.append(" removing");
        }
        if (this.f3805n) {
            sb.append(" detached");
        }
        if (this.f3807p) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3797f);
        parcel.writeString(this.f3798g);
        parcel.writeInt(this.f3799h ? 1 : 0);
        parcel.writeInt(this.f3800i);
        parcel.writeInt(this.f3801j);
        parcel.writeString(this.f3802k);
        parcel.writeInt(this.f3803l ? 1 : 0);
        parcel.writeInt(this.f3804m ? 1 : 0);
        parcel.writeInt(this.f3805n ? 1 : 0);
        parcel.writeBundle(this.f3806o);
        parcel.writeInt(this.f3807p ? 1 : 0);
        parcel.writeBundle(this.f3809r);
        parcel.writeInt(this.f3808q);
    }
}
