package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState.class */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new C0227a();

    /* renamed from: a */
    public ArrayList<FragmentState> f1343a;

    /* renamed from: b */
    public ArrayList<String> f1344b;

    /* renamed from: c */
    public BackStackState[] f1345c;

    /* renamed from: d */
    public String f1346d;

    /* renamed from: e */
    public int f1347e;

    /* renamed from: androidx.fragment.app.FragmentManagerState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState$a.class */
    public static final class C0227a implements Parcelable.Creator<FragmentManagerState> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    public FragmentManagerState() {
        this.f1346d = null;
    }

    public FragmentManagerState(Parcel parcel) {
        this.f1346d = null;
        this.f1343a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f1344b = parcel.createStringArrayList();
        this.f1345c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f1346d = parcel.readString();
        this.f1347e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f1343a);
        parcel.writeStringList(this.f1344b);
        parcel.writeTypedArray(this.f1345c, i);
        parcel.writeString(this.f1346d);
        parcel.writeInt(this.f1347e);
    }
}
