package p193e.p194a.p437c.p552i.p559g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p523a0.C9662r;
import s1.z.c.l;
/* renamed from: e.a.c.i.g.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/g/d.class */
public final class C10346d {

    /* renamed from: a */
    public final long f30732a;

    /* renamed from: b */
    public final String f30733b;

    /* renamed from: c */
    public final String f30734c;

    /* renamed from: d */
    public final C9662r f30735d;

    public C10346d(long j, String str, String str2, C9662r c9662r) {
        l.e(str, "senderId");
        l.e(str2, "analyticsContext");
        this.f30732a = j;
        this.f30733b = str;
        this.f30734c = str2;
        this.f30735d = c9662r;
    }

    public C10346d(long j, String str, String str2, C9662r c9662r, int i) {
        l.e(str, "senderId");
        l.e(str2, "analyticsContext");
        this.f30732a = j;
        this.f30733b = str;
        this.f30734c = str2;
        this.f30735d = null;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10346d)) {
                return false;
            }
            C10346d c10346d = (C10346d) obj;
            return this.f30732a == c10346d.f30732a && l.a(this.f30733b, c10346d.f30733b) && l.a(this.f30734c, c10346d.f30734c) && l.a(this.f30735d, c10346d.f30735d);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f30732a);
        String str = this.f30733b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30734c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        C9662r c9662r = this.f30735d;
        if (c9662r != null) {
            i = c9662r.hashCode();
        }
        return (((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RequestUpdatesTag(conversationId=");
        m8728C.append(this.f30732a);
        m8728C.append(", senderId=");
        m8728C.append(this.f30733b);
        m8728C.append(", analyticsContext=");
        m8728C.append(this.f30734c);
        m8728C.append(", boundaryInfo=");
        m8728C.append(this.f30735d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
