package p193e.p194a.p437c.p552i.p559g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p523a0.C9662r;
import s1.z.c.l;
/* renamed from: e.a.c.i.g.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/g/c.class */
public final class C10345c {

    /* renamed from: a */
    public final long f30728a;

    /* renamed from: b */
    public final String f30729b;

    /* renamed from: c */
    public final String f30730c;

    /* renamed from: d */
    public final C9662r f30731d;

    public C10345c(long j, String str, String str2, C9662r c9662r) {
        l.e(str, "senderId");
        l.e(str2, "analyticsContext");
        this.f30728a = j;
        this.f30729b = str;
        this.f30730c = str2;
        this.f30731d = c9662r;
    }

    public C10345c(long j, String str, String str2, C9662r c9662r, int i) {
        l.e(str, "senderId");
        l.e(str2, "analyticsContext");
        this.f30728a = j;
        this.f30729b = str;
        this.f30730c = str2;
        this.f30731d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a */
    public static C10345c m26319a(C10345c c10345c, long j, String str, String str2, C9662r c9662r, int i) {
        ?? r9 = j;
        if ((i & 1) != 0) {
            r9 = c10345c.f30728a;
        }
        String str3 = (i & 2) != 0 ? c10345c.f30729b : null;
        String str4 = (i & 4) != 0 ? c10345c.f30730c : null;
        if ((i & 8) != 0) {
            c9662r = c10345c.f30731d;
        }
        l.e(str3, "senderId");
        l.e(str4, "analyticsContext");
        return new C10345c(r9, str3, str4, c9662r);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10345c)) {
                return false;
            }
            C10345c c10345c = (C10345c) obj;
            return this.f30728a == c10345c.f30728a && l.a(this.f30729b, c10345c.f30729b) && l.a(this.f30730c, c10345c.f30730c) && l.a(this.f30731d, c10345c.f30731d);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f30728a);
        String str = this.f30729b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30730c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        C9662r c9662r = this.f30731d;
        if (c9662r != null) {
            i = c9662r.hashCode();
        }
        return (((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RequestInfocard(conversationId=");
        m8728C.append(this.f30728a);
        m8728C.append(", senderId=");
        m8728C.append(this.f30729b);
        m8728C.append(", analyticsContext=");
        m8728C.append(this.f30730c);
        m8728C.append(", boundaryInfo=");
        m8728C.append(this.f30731d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
