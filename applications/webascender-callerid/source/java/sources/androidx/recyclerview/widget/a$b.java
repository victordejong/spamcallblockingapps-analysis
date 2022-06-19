package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
class a$b {

    /* renamed from: a */
    int f2023a;

    /* renamed from: b */
    int f2024b;

    /* renamed from: c */
    Object f2025c;

    /* renamed from: d */
    int f2026d;

    a$b(int i, int i2, int i3, Object obj) {
        this.f2023a = i;
        this.f2024b = i2;
        this.f2026d = i3;
        this.f2025c = obj;
    }

    /* renamed from: a */
    String m4991a() {
        int i = this.f2023a;
        return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a$b.class != obj.getClass()) {
            return false;
        }
        a$b a_b = (a$b) obj;
        int i = this.f2023a;
        if (i != a_b.f2023a) {
            return false;
        }
        if (i == 8 && Math.abs(this.f2026d - this.f2024b) == 1 && this.f2026d == a_b.f2024b && this.f2024b == a_b.f2026d) {
            return true;
        }
        if (this.f2026d != a_b.f2026d || this.f2024b != a_b.f2024b) {
            return false;
        }
        Object obj2 = this.f2025c;
        return obj2 != null ? obj2.equals(a_b.f2025c) : a_b.f2025c == null;
    }

    public int hashCode() {
        return (((this.f2023a * 31) + this.f2024b) * 31) + this.f2026d;
    }

    public String toString() {
        return Integer.toHexString(System.identityHashCode(this)) + "[" + m4991a() + ",s:" + this.f2024b + "c:" + this.f2026d + ",p:" + this.f2025c + "]";
    }
}
