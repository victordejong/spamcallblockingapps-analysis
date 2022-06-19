package p193e.p194a.p918j.p919a.p920a.p921a.p923b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.j.a.a.a.b.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/c.class */
public final class C15348c {

    /* renamed from: a */
    public final String f43629a;

    /* renamed from: b */
    public final String f43630b;

    /* renamed from: c */
    public final String f43631c;

    /* renamed from: d */
    public final boolean f43632d;

    public C15348c(String str, String str2, String str3, boolean z) {
        C22128a.m8703I0(str, "title", str2, "question", str3, "hint");
        this.f43629a = str;
        this.f43630b = str2;
        this.f43631c = str3;
        this.f43632d = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15348c)) {
                return false;
            }
            C15348c c15348c = (C15348c) obj;
            return l.a(this.f43629a, c15348c.f43629a) && l.a(this.f43630b, c15348c.f43630b) && l.a(this.f43631c, c15348c.f43631c) && this.f43632d == c15348c.f43632d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43629a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43630b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f43631c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        boolean z = this.f43632d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FreeTextUIModel(title=");
        m8728C.append(this.f43629a);
        m8728C.append(", question=");
        m8728C.append(this.f43630b);
        m8728C.append(", hint=");
        m8728C.append(this.f43631c);
        m8728C.append(", showNameSuggestion=");
        return C22128a.m8590o(m8728C, this.f43632d, ")");
    }
}
