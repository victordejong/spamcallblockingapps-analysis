package androidx.core.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$c.class */
public class NestedScrollView$c extends View.BaseSavedState {
    public static final Parcelable.Creator<NestedScrollView$c> CREATOR = new C0234a();

    /* renamed from: f */
    public int f1344f;

    /* renamed from: androidx.core.widget.NestedScrollView$c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$c$a.class */
    class C0234a implements Parcelable.Creator<NestedScrollView$c> {
        C0234a() {
        }

        /* renamed from: a */
        public NestedScrollView$c createFromParcel(Parcel parcel) {
            return new NestedScrollView$c(parcel);
        }

        /* renamed from: b */
        public NestedScrollView$c[] newArray(int i) {
            return new NestedScrollView$c[i];
        }
    }

    NestedScrollView$c(Parcel parcel) {
        super(parcel);
        this.f1344f = parcel.readInt();
    }

    NestedScrollView$c(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f1344f + "}";
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f1344f);
    }
}
