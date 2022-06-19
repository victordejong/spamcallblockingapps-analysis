package p193e.p194a.p918j.p919a.p920a.p921a.p922a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.j.a.a.a.a.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/c.class */
public final class C15332c {

    /* renamed from: a */
    public final String f43600a;

    /* renamed from: b */
    public final String f43601b;

    /* renamed from: c */
    public final String f43602c;

    /* renamed from: d */
    public final String f43603d;

    public C15332c(String str, String str2, String str3, String str4) {
        C22128a.m8699J0(str, "title", str2, "question", str3, "choiceTrueText", str4, "choiceFalseText");
        this.f43600a = str;
        this.f43601b = str2;
        this.f43602c = str3;
        this.f43603d = str4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15332c)) {
                return false;
            }
            C15332c c15332c = (C15332c) obj;
            return l.a(this.f43600a, c15332c.f43600a) && l.a(this.f43601b, c15332c.f43601b) && l.a(this.f43602c, c15332c.f43602c) && l.a(this.f43603d, c15332c.f43603d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43600a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43601b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f43602c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f43603d;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BooleanChoiceUIModel(title=");
        m8728C.append(this.f43600a);
        m8728C.append(", question=");
        m8728C.append(this.f43601b);
        m8728C.append(", choiceTrueText=");
        m8728C.append(this.f43602c);
        m8728C.append(", choiceFalseText=");
        return C22128a.m8618h(m8728C, this.f43603d, ")");
    }
}
