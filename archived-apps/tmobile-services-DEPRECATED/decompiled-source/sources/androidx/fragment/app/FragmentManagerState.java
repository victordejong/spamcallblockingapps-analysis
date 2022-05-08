package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState.class */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator<FragmentManagerState>() { // from class: androidx.fragment.app.FragmentManagerState.1
        /* renamed from: a */
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        /* renamed from: b */
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    };

    /* renamed from: f */
    ArrayList<FragmentState> f3785f;

    /* renamed from: g */
    ArrayList<String> f3786g;

    /* renamed from: h */
    BackStackState[] f3787h;

    /* renamed from: i */
    int f3788i;

    /* renamed from: j */
    String f3789j;

    public FragmentManagerState() {
        this.f3789j = null;
    }

    public FragmentManagerState(Parcel parcel) {
        this.f3789j = null;
        this.f3785f = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f3786g = parcel.createStringArrayList();
        this.f3787h = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f3788i = parcel.readInt();
        this.f3789j = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f3785f);
        parcel.writeStringList(this.f3786g);
        parcel.writeTypedArray(this.f3787h, i);
        parcel.writeInt(this.f3788i);
        parcel.writeString(this.f3789j);
    }
}
