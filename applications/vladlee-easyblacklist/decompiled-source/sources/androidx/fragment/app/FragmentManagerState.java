package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState.class */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new C0912v();

    /* renamed from: a */
    ArrayList<FragmentState> f3627a;

    /* renamed from: b */
    ArrayList<String> f3628b;

    /* renamed from: c */
    BackStackState[] f3629c;

    /* renamed from: d */
    String f3630d;

    /* renamed from: e */
    int f3631e;

    public FragmentManagerState() {
        this.f3630d = null;
    }

    public FragmentManagerState(Parcel parcel) {
        this.f3630d = null;
        this.f3627a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f3628b = parcel.createStringArrayList();
        this.f3629c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f3630d = parcel.readString();
        this.f3631e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f3627a);
        parcel.writeStringList(this.f3628b);
        parcel.writeTypedArray(this.f3629c, i);
        parcel.writeString(this.f3630d);
        parcel.writeInt(this.f3631e);
    }
}
