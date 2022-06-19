package p193e.p194a.p947k.p971l;

import com.truecaller.data.entity.Contact;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.l.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/l/a.class */
public final class C16119a {

    /* renamed from: a */
    public final String f45425a;

    /* renamed from: b */
    public final Contact f45426b;

    public C16119a(String str, Contact contact) {
        l.e(str, "normalizedNumber");
        this.f45425a = str;
        this.f45426b = contact;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16119a)) {
                return false;
            }
            C16119a c16119a = (C16119a) obj;
            return l.a(this.f45425a, c16119a.f45425a) && l.a(this.f45426b, c16119a.f45426b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45425a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Contact contact = this.f45426b;
        if (contact != null) {
            i = contact.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FrequentCalledContacts(normalizedNumber=");
        m8728C.append(this.f45425a);
        m8728C.append(", contact=");
        m8728C.append(this.f45426b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
