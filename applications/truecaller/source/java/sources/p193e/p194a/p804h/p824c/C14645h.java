package p193e.p194a.p804h.p824c;

import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.c.h */
/* loaded from: classes3-dex2jar.jar:e/a/h/c/h.class */
public final class C14645h {

    /* renamed from: a */
    public final String f42130a;

    /* renamed from: b */
    public final Number f42131b;

    /* renamed from: c */
    public final Contact f42132c;

    public C14645h(String str, Number number, Contact contact) {
        l.e(str, "originalValue");
        this.f42130a = str;
        this.f42131b = number;
        this.f42132c = contact;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C14645h) && l.a(this.f42130a, ((C14645h) obj).f42130a);
    }

    public int hashCode() {
        return this.f42130a.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SpeedDialItem(originalValue=");
        m8728C.append(this.f42130a);
        m8728C.append(", number=");
        m8728C.append(this.f42131b);
        m8728C.append(", contact=");
        m8728C.append(this.f42132c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
