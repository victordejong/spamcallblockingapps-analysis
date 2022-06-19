package androidx.activity.result;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.activity.result.a */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/a.class */
public final class C0038a implements Parcelable {
    public static final Parcelable.Creator<C0038a> CREATOR = new C0039a();

    /* renamed from: f */
    private final int f76f;

    /* renamed from: g */
    private final Intent f77g;

    /* renamed from: androidx.activity.result.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/a$a.class */
    class C0039a implements Parcelable.Creator<C0038a> {
        C0039a() {
        }

        /* renamed from: a */
        public C0038a createFromParcel(Parcel parcel) {
            return new C0038a(parcel);
        }

        /* renamed from: b */
        public C0038a[] newArray(int i) {
            return new C0038a[i];
        }
    }

    public C0038a(int i, Intent intent) {
        this.f76f = i;
        this.f77g = intent;
    }

    C0038a(Parcel parcel) {
        this.f76f = parcel.readInt();
        this.f77g = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    /* renamed from: c */
    public static String m6976c(int i) {
        return i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK";
    }

    /* renamed from: a */
    public Intent m6978a() {
        return this.f77g;
    }

    /* renamed from: b */
    public int m6977b() {
        return this.f76f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + m6976c(this.f76f) + ", data=" + this.f77g + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f76f);
        parcel.writeInt(this.f77g == null ? 0 : 1);
        Intent intent = this.f77g;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
