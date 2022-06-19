package p193e.p194a.p852i.p879e.p892j;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.e.j.c */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/j/c.class */
public final class C15154c {

    /* renamed from: a */
    public final Integer f43198a;

    /* renamed from: b */
    public final int f43199b;

    /* renamed from: c */
    public final String f43200c;

    /* renamed from: d */
    public final String f43201d;

    public C15154c(Integer num, int i, String str, String str2) {
        this.f43198a = num;
        this.f43199b = i;
        this.f43200c = str;
        this.f43201d = str2;
    }

    public /* synthetic */ C15154c(Integer num, int i, String str, String str2, int i2) {
        this((i2 & 1) != 0 ? null : num, i, null, null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15154c)) {
                return false;
            }
            C15154c c15154c = (C15154c) obj;
            return l.a(this.f43198a, c15154c.f43198a) && this.f43199b == c15154c.f43199b && l.a(this.f43200c, c15154c.f43200c) && l.a(this.f43201d, c15154c.f43201d);
        }
        return true;
    }

    public int hashCode() {
        Integer num = this.f43198a;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        int i2 = this.f43199b;
        String str = this.f43200c;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f43201d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UiComponentStyle(style=");
        m8728C.append(this.f43198a);
        m8728C.append(", layout=");
        m8728C.append(this.f43199b);
        m8728C.append(", textColor=");
        m8728C.append(this.f43200c);
        m8728C.append(", bgColor=");
        return C22128a.m8618h(m8728C, this.f43201d, ")");
    }
}
