package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.AbstractC0281n;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.p */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p.class */
public final class C0290p implements Parcelable {
    public static final Parcelable.Creator<C0290p> CREATOR = new C0291a();

    /* renamed from: f */
    ArrayList<C0294u> f1573f;

    /* renamed from: g */
    ArrayList<String> f1574g;

    /* renamed from: h */
    C0250b[] f1575h;

    /* renamed from: i */
    int f1576i;

    /* renamed from: j */
    String f1577j;

    /* renamed from: k */
    ArrayList<String> f1578k;

    /* renamed from: l */
    ArrayList<Bundle> f1579l;

    /* renamed from: m */
    ArrayList<AbstractC0281n.C0286n> f1580m;

    /* renamed from: androidx.fragment.app.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p$a.class */
    class C0291a implements Parcelable.Creator<C0290p> {
        C0291a() {
        }

        /* renamed from: a */
        public C0290p createFromParcel(Parcel parcel) {
            return new C0290p(parcel);
        }

        /* renamed from: b */
        public C0290p[] newArray(int i) {
            return new C0290p[i];
        }
    }

    public C0290p() {
        this.f1577j = null;
        this.f1578k = new ArrayList<>();
        this.f1579l = new ArrayList<>();
    }

    public C0290p(Parcel parcel) {
        this.f1577j = null;
        this.f1578k = new ArrayList<>();
        this.f1579l = new ArrayList<>();
        this.f1573f = parcel.createTypedArrayList(C0294u.CREATOR);
        this.f1574g = parcel.createStringArrayList();
        this.f1575h = (C0250b[]) parcel.createTypedArray(C0250b.CREATOR);
        this.f1576i = parcel.readInt();
        this.f1577j = parcel.readString();
        this.f1578k = parcel.createStringArrayList();
        this.f1579l = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f1580m = parcel.createTypedArrayList(AbstractC0281n.C0286n.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f1573f);
        parcel.writeStringList(this.f1574g);
        parcel.writeTypedArray(this.f1575h, i);
        parcel.writeInt(this.f1576i);
        parcel.writeString(this.f1577j);
        parcel.writeStringList(this.f1578k);
        parcel.writeTypedList(this.f1579l);
        parcel.writeTypedList(this.f1580m);
    }
}
