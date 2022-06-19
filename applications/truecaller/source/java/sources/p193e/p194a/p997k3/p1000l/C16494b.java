package p193e.p194a.p997k3.p1000l;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k3.l.b */
/* loaded from: classes8-dex2jar.jar:e/a/k3/l/b.class */
public final class C16494b {

    /* renamed from: a */
    public final String f46379a;

    /* renamed from: b */
    public final String f46380b;

    /* renamed from: c */
    public final String f46381c;

    public C16494b() {
        this(null, null, null, 7);
    }

    public C16494b(String str, String str2, String str3) {
        this.f46379a = str;
        this.f46380b = str2;
        this.f46381c = str3;
    }

    public /* synthetic */ C16494b(String str, String str2, String str3, int i) {
        this(null, null, null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16494b)) {
                return false;
            }
            C16494b c16494b = (C16494b) obj;
            return l.a(this.f46379a, c16494b.f46379a) && l.a(this.f46380b, c16494b.f46380b) && l.a(this.f46381c, c16494b.f46381c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f46379a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f46380b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f46381c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContactSortingData(firstName=");
        m8728C.append(this.f46379a);
        m8728C.append(", lastName=");
        m8728C.append(this.f46380b);
        m8728C.append(", sortingGroup=");
        return C22128a.m8618h(m8728C, this.f46381c, ")");
    }
}
