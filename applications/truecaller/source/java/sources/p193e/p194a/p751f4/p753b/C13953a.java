package p193e.p194a.p751f4.p753b;

import p193e.p194a.p372b0.p394b.AbstractC8371e;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.f4.b.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/a.class */
public class C13953a {

    /* renamed from: a */
    public final a<Boolean> f40373a;

    public C13953a(a<Boolean> aVar) {
        l.e(aVar, "isCrossDomainEnabled");
        this.f40373a = aVar;
    }

    /* renamed from: a */
    public final boolean m20944a(AbstractC8371e abstractC8371e) {
        return ((Boolean) this.f40373a.invoke()).booleanValue() && (abstractC8371e instanceof AbstractC8371e.C8373b);
    }

    /* renamed from: b */
    public final AbstractC8371e.C8373b m20943b(AbstractC8371e abstractC8371e) {
        if (!(((Boolean) this.f40373a.invoke()).booleanValue() && (abstractC8371e instanceof AbstractC8371e.C8373b))) {
            abstractC8371e = null;
        }
        if (!(abstractC8371e instanceof AbstractC8371e.C8373b)) {
            abstractC8371e = null;
        }
        return (AbstractC8371e.C8373b) abstractC8371e;
    }
}
