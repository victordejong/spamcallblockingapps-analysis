package p193e.p194a.p947k.p981q;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.q.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/q/a.class */
public final class C16261a {

    /* renamed from: a */
    public final String f45812a;

    /* renamed from: b */
    public final String f45813b;

    /* renamed from: c */
    public final long f45814c;

    public C16261a(String str, String str2, long j) {
        l.e(str, "url");
        this.f45812a = str;
        this.f45813b = str2;
        this.f45814c = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public C16261a(String str, String str2, long j, int i) {
        ?? r7 = (i & 4) != 0 ? 100 : j;
        l.e(str, "url");
        this.f45812a = str;
        this.f45813b = str2;
        this.f45814c = r7;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16261a)) {
                return false;
            }
            C16261a c16261a = (C16261a) obj;
            return l.a(this.f45812a, c16261a.f45812a) && l.a(this.f45813b, c16261a.f45813b) && this.f45814c == c16261a.f45814c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45812a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f45813b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + C4876d.m34274a(this.f45814c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DownloadRequest(url=");
        m8728C.append(this.f45812a);
        m8728C.append(", identifier=");
        m8728C.append(this.f45813b);
        m8728C.append(", downloadPercentage=");
        return C22128a.m8693K2(m8728C, this.f45814c, ")");
    }
}
