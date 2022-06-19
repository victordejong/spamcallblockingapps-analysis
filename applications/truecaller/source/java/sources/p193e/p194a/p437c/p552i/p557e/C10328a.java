package p193e.p194a.p437c.p552i.p557e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.i.e.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/e/a.class */
public final class C10328a {

    /* renamed from: a */
    public final String f30673a;

    /* renamed from: b */
    public final String f30674b;

    /* renamed from: c */
    public final String f30675c;

    /* renamed from: d */
    public final b f30676d;

    /* renamed from: e */
    public final AbstractC10616p f30677e;

    /* renamed from: f */
    public final boolean f30678f;

    public C10328a(String str, String str2, String str3, b bVar, AbstractC10616p abstractC10616p, boolean z) {
        l.e(str, "message");
        l.e(bVar, "date");
        this.f30673a = str;
        this.f30674b = str2;
        this.f30675c = str3;
        this.f30676d = bVar;
        this.f30677e = abstractC10616p;
        this.f30678f = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10328a)) {
                return false;
            }
            C10328a c10328a = (C10328a) obj;
            return l.a(this.f30673a, c10328a.f30673a) && l.a(this.f30674b, c10328a.f30674b) && l.a(this.f30675c, c10328a.f30675c) && l.a(this.f30676d, c10328a.f30676d) && l.a(this.f30677e, c10328a.f30677e) && this.f30678f == c10328a.f30678f;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f30673a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30674b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f30675c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        b bVar = this.f30676d;
        int hashCode4 = bVar != null ? bVar.hashCode() : 0;
        AbstractC10616p abstractC10616p = this.f30677e;
        if (abstractC10616p != null) {
            i = abstractC10616p.hashCode();
        }
        boolean z = this.f30678f;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FeedbackMessage(message=");
        m8728C.append(this.f30673a);
        m8728C.append(", address=");
        m8728C.append(this.f30674b);
        m8728C.append(", category=");
        m8728C.append(this.f30675c);
        m8728C.append(", date=");
        m8728C.append(this.f30676d);
        m8728C.append(", parserCategory=");
        m8728C.append(this.f30677e);
        m8728C.append(", isIM=");
        return C22128a.m8590o(m8728C, this.f30678f, ")");
    }
}
