package p193e.p194a.p437c.p580r.p589j;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/j.class */
public final class C10606j {

    /* renamed from: a */
    public final AbstractC10605i f31617a;

    /* renamed from: b */
    public final long f31618b;

    /* renamed from: c */
    public long f31619c;

    public C10606j(AbstractC10605i abstractC10605i, long j, long j2) {
        l.e(abstractC10605i, "feedbackCard");
        this.f31617a = abstractC10605i;
        this.f31618b = j;
        this.f31619c = j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10606j)) {
                return false;
            }
            C10606j c10606j = (C10606j) obj;
            return l.a(this.f31617a, c10606j.f31617a) && this.f31618b == c10606j.f31618b && this.f31619c == c10606j.f31619c;
        }
        return true;
    }

    public int hashCode() {
        AbstractC10605i abstractC10605i = this.f31617a;
        return ((((abstractC10605i != null ? abstractC10605i.hashCode() : 0) * 31) + C4876d.m34274a(this.f31618b)) * 31) + C4876d.m34274a(this.f31619c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FeedbackCardView(feedbackCard=");
        m8728C.append(this.f31617a);
        m8728C.append(", startTimeStamp=");
        m8728C.append(this.f31618b);
        m8728C.append(", endTimeStamp=");
        return C22128a.m8693K2(m8728C, this.f31619c, ")");
    }
}
