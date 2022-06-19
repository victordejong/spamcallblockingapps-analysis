package p193e.p194a.p739f0.p748i;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.f0.i.a */
/* loaded from: classes13-dex2jar.jar:e/a/f0/i/a.class */
public final class C13899a {

    /* renamed from: a */
    public final String f40284a;

    /* renamed from: b */
    public final String f40285b;

    /* renamed from: c */
    public final String f40286c;

    public C13899a() {
        this(null, null, null, 7);
    }

    public C13899a(String str, String str2, String str3, int i) {
        String str4 = (i & 1) != 0 ? "android.intent.action.VIEW" : null;
        str2 = (i & 2) != 0 ? null : str2;
        str3 = (i & 4) != 0 ? null : str3;
        l.e(str4, "action");
        this.f40284a = str4;
        this.f40285b = str2;
        this.f40286c = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13899a)) {
                return false;
            }
            C13899a c13899a = (C13899a) obj;
            return l.a(this.f40284a, c13899a.f40284a) && l.a(this.f40285b, c13899a.f40285b) && l.a(this.f40286c, c13899a.f40286c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f40284a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f40285b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f40286c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("IntentHelper(action=");
        m8728C.append(this.f40284a);
        m8728C.append(", packageName=");
        m8728C.append(this.f40285b);
        m8728C.append(", data=");
        return C22128a.m8618h(m8728C, this.f40286c, ")");
    }
}
