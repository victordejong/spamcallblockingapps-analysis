package androidx.activity.result;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.activity.result.f */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/f.class */
public final class C0046f implements Parcelable {
    public static final Parcelable.Creator<C0046f> CREATOR = new C0047a();

    /* renamed from: f */
    private final IntentSender f89f;

    /* renamed from: g */
    private final Intent f90g;

    /* renamed from: h */
    private final int f91h;

    /* renamed from: i */
    private final int f92i;

    /* renamed from: androidx.activity.result.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/f$a.class */
    class C0047a implements Parcelable.Creator<C0046f> {
        C0047a() {
        }

        /* renamed from: a */
        public C0046f createFromParcel(Parcel parcel) {
            return new C0046f(parcel);
        }

        /* renamed from: b */
        public C0046f[] newArray(int i) {
            return new C0046f[i];
        }
    }

    /* renamed from: androidx.activity.result.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/f$b.class */
    public static final class C0048b {

        /* renamed from: a */
        private IntentSender f93a;

        /* renamed from: b */
        private Intent f94b;

        /* renamed from: c */
        private int f95c;

        /* renamed from: d */
        private int f96d;

        public C0048b(IntentSender intentSender) {
            this.f93a = intentSender;
        }

        /* renamed from: a */
        public C0046f m6951a() {
            return new C0046f(this.f93a, this.f94b, this.f95c, this.f96d);
        }

        /* renamed from: b */
        public C0048b m6950b(Intent intent) {
            this.f94b = intent;
            return this;
        }

        /* renamed from: c */
        public C0048b m6949c(int i, int i2) {
            this.f96d = i;
            this.f95c = i2;
            return this;
        }
    }

    C0046f(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f89f = intentSender;
        this.f90g = intent;
        this.f91h = i;
        this.f92i = i2;
    }

    C0046f(Parcel parcel) {
        this.f89f = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f90g = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f91h = parcel.readInt();
        this.f92i = parcel.readInt();
    }

    /* renamed from: a */
    public Intent m6957a() {
        return this.f90g;
    }

    /* renamed from: b */
    public int m6956b() {
        return this.f91h;
    }

    /* renamed from: c */
    public int m6955c() {
        return this.f92i;
    }

    /* renamed from: d */
    public IntentSender m6954d() {
        return this.f89f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f89f, i);
        parcel.writeParcelable(this.f90g, i);
        parcel.writeInt(this.f91h);
        parcel.writeInt(this.f92i);
    }
}
