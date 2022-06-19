package p193e.p194a.p804h.p806b.p818w0;

import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import s1.z.c.l;
/* renamed from: e.a.h.b.w0.c */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/w0/c.class */
public final class C14629c {

    /* renamed from: a */
    public final String f42109a;

    /* renamed from: b */
    public Contact f42110b;

    /* renamed from: c */
    public final boolean f42111c;

    public C14629c(String str, Contact contact, boolean z) {
        l.e(str, "normalizedNumber");
        this.f42109a = str;
        this.f42110b = contact;
        this.f42111c = z;
    }

    /* renamed from: a */
    public final Number m19854a(AbstractC16498f abstractC16498f) {
        Number number;
        List<Number> m35557M;
        Object obj;
        l.e(abstractC16498f, "numberProvider");
        Contact contact = this.f42110b;
        if (contact != null && (m35557M = contact.m35557M()) != null) {
            Iterator<T> it = m35557M.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                Number number2 = (Number) obj;
                l.d(number2, "it");
                if (l.a(number2.m35479e(), this.f42109a)) {
                    break;
                }
            }
            Number number3 = (Number) obj;
            if (number3 != null) {
                number = number3;
                return number;
            }
        }
        number = abstractC16498f.mo17316d(this.f42109a);
        return number;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C14629c) && l.a(this.f42109a, ((C14629c) obj).f42109a);
    }

    public int hashCode() {
        return this.f42109a.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SuggestedContact(normalizedNumber=");
        m8728C.append(this.f42109a);
        m8728C.append(", contact=");
        m8728C.append(this.f42110b);
        m8728C.append(", isPinned=");
        return C22128a.m8590o(m8728C, this.f42111c, ")");
    }
}
