package p193e.p194a.p619d.p627b0;

import com.truecaller.data.entity.Contact;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.b0.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/b0/c.class */
public final class C11166c {

    /* renamed from: a */
    public final Contact f33018a;

    /* renamed from: b */
    public final long f33019b;

    /* renamed from: c */
    public final String f33020c;

    /* renamed from: d */
    public final int f33021d;

    /* renamed from: e */
    public final int f33022e;

    public C11166c(Contact contact, long j, String str, int i, int i2) {
        l.e(str, "normalizedNumber");
        this.f33018a = contact;
        this.f33019b = j;
        this.f33020c = str;
        this.f33021d = i;
        this.f33022e = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11166c)) {
                return false;
            }
            C11166c c11166c = (C11166c) obj;
            return l.a(this.f33018a, c11166c.f33018a) && this.f33019b == c11166c.f33019b && l.a(this.f33020c, c11166c.f33020c) && this.f33021d == c11166c.f33021d && this.f33022e == c11166c.f33022e;
        }
        return true;
    }

    public int hashCode() {
        Contact contact = this.f33018a;
        int i = 0;
        int hashCode = contact != null ? contact.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f33019b);
        String str = this.f33020c;
        if (str != null) {
            i = str.hashCode();
        }
        return (((((((hashCode * 31) + m34274a) * 31) + i) * 31) + this.f33021d) * 31) + this.f33022e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipGroupPeerHistory(contact=");
        m8728C.append(this.f33018a);
        m8728C.append(", historyId=");
        m8728C.append(this.f33019b);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f33020c);
        m8728C.append(", status=");
        m8728C.append(this.f33021d);
        m8728C.append(", position=");
        return C22128a.m8697J2(m8728C, this.f33022e, ")");
    }
}
