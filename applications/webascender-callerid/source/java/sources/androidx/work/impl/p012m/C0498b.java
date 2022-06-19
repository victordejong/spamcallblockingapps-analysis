package androidx.work.impl.p012m;
/* renamed from: androidx.work.impl.m.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/b.class */
public class C0498b {

    /* renamed from: a */
    private boolean f2563a;

    /* renamed from: b */
    private boolean f2564b;

    /* renamed from: c */
    private boolean f2565c;

    /* renamed from: d */
    private boolean f2566d;

    public C0498b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f2563a = z;
        this.f2564b = z2;
        this.f2565c = z3;
        this.f2566d = z4;
    }

    /* renamed from: a */
    public boolean m4440a() {
        return this.f2563a;
    }

    /* renamed from: b */
    public boolean m4439b() {
        return this.f2565c;
    }

    /* renamed from: c */
    public boolean m4438c() {
        return this.f2566d;
    }

    /* renamed from: d */
    public boolean m4437d() {
        return this.f2564b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0498b)) {
            return false;
        }
        C0498b c0498b = (C0498b) obj;
        if (this.f2563a != c0498b.f2563a || this.f2564b != c0498b.f2564b || this.f2565c != c0498b.f2565c || this.f2566d != c0498b.f2566d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f2563a ? 1 : 0;
        int i2 = i;
        if (this.f2564b) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.f2565c) {
            i3 = i2 + 256;
        }
        int i4 = i3;
        if (this.f2566d) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f2563a), Boolean.valueOf(this.f2564b), Boolean.valueOf(this.f2565c), Boolean.valueOf(this.f2566d));
    }
}
