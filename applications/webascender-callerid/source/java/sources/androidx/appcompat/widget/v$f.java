package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$f.class */
public class v$f extends View.BaseSavedState {
    public static final Parcelable.Creator<v$f> CREATOR = new C0134a();

    /* renamed from: f */
    boolean f591f;

    /* renamed from: androidx.appcompat.widget.v$f$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$f$a.class */
    class C0134a implements Parcelable.Creator<v$f> {
        C0134a() {
        }

        /* renamed from: a */
        public v$f createFromParcel(Parcel parcel) {
            return new v$f(parcel);
        }

        /* renamed from: b */
        public v$f[] newArray(int i) {
            return new v$f[i];
        }
    }

    v$f(Parcel parcel) {
        super(parcel);
        this.f591f = parcel.readByte() != 0;
    }

    v$f(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.f591f ? (byte) 1 : (byte) 0);
    }
}
