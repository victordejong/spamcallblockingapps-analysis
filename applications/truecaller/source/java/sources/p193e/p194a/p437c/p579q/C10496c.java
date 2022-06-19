package p193e.p194a.p437c.p579q;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.AbstractC10518b;
import s1.z.c.l;
/* renamed from: e.a.c.q.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/q/c.class */
public final class C10496c {

    /* renamed from: a */
    public final long f31201a;

    /* renamed from: b */
    public final long f31202b;

    /* renamed from: c */
    public final String f31203c;

    /* renamed from: d */
    public final String f31204d;

    /* renamed from: e */
    public final AbstractC10518b.C10519a f31205e;

    /* renamed from: f */
    public final long f31206f;

    /* renamed from: g */
    public final int f31207g;

    /* renamed from: h */
    public final boolean f31208h;

    public C10496c(long j, long j2, String str, String str2, AbstractC10518b.C10519a c10519a, long j3, int i, boolean z) {
        l.e(str, "address");
        l.e(str2, "category");
        l.e(c10519a, "bankUiSchema");
        this.f31201a = j;
        this.f31202b = j2;
        this.f31203c = str;
        this.f31204d = str2;
        this.f31205e = c10519a;
        this.f31206f = j3;
        this.f31207g = i;
        this.f31208h = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10496c)) {
                return false;
            }
            C10496c c10496c = (C10496c) obj;
            return this.f31201a == c10496c.f31201a && this.f31202b == c10496c.f31202b && l.a(this.f31203c, c10496c.f31203c) && l.a(this.f31204d, c10496c.f31204d) && l.a(this.f31205e, c10496c.f31205e) && this.f31206f == c10496c.f31206f && this.f31207g == c10496c.f31207g && this.f31208h == c10496c.f31208h;
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f31201a);
        int m34274a2 = C4876d.m34274a(this.f31202b);
        String str = this.f31203c;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31204d;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        AbstractC10518b.C10519a c10519a = this.f31205e;
        if (c10519a != null) {
            i = c10519a.hashCode();
        }
        int m34274a3 = C4876d.m34274a(this.f31206f);
        int i2 = this.f31207g;
        boolean z = this.f31208h;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        return (((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + i) * 31) + m34274a3) * 31) + i2) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FinanceData(msgId=");
        m8728C.append(this.f31201a);
        m8728C.append(", conversationId=");
        m8728C.append(this.f31202b);
        m8728C.append(", address=");
        m8728C.append(this.f31203c);
        m8728C.append(", category=");
        m8728C.append(this.f31204d);
        m8728C.append(", bankUiSchema=");
        m8728C.append(this.f31205e);
        m8728C.append(", msgDateTime=");
        m8728C.append(this.f31206f);
        m8728C.append(", spamCategory=");
        m8728C.append(this.f31207g);
        m8728C.append(", isIM=");
        return C22128a.m8590o(m8728C, this.f31208h, ")");
    }
}
