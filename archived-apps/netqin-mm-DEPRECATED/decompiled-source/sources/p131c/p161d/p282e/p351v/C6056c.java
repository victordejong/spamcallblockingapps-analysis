package p131c.p161d.p282e.p351v;

import java.util.Iterator;
import java.util.Set;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
/* renamed from: c.d.e.v.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/v/c.class */
public class C6056c implements AbstractC6063i {

    /* renamed from: a */
    public final String f19497a;

    /* renamed from: b */
    public final C6057d f19498b;

    public C6056c(Set<AbstractC6059f> set, C6057d dVar) {
        this.f19497a = m22174a(set);
        this.f19498b = dVar;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC6063i m22175a(AbstractC5165e eVar) {
        return new C6056c(eVar.mo24327d(AbstractC6059f.class), C6057d.m22171b());
    }

    /* renamed from: a */
    public static String m22174a(Set<AbstractC6059f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC6059f> it = set.iterator();
        while (it.hasNext()) {
            AbstractC6059f next = it.next();
            sb.append(next.mo22169a());
            sb.append('/');
            sb.append(next.mo22167b());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static C5162d<AbstractC6063i> m22173b() {
        C5162d.C5164b a = C5162d.m24395a(AbstractC6063i.class);
        a.m24378a(C5180n.m24340e(AbstractC6059f.class));
        a.m24379a(C6055b.m22176a());
        return a.m24382a();
    }

    @Override // p131c.p161d.p282e.p351v.AbstractC6063i
    /* renamed from: a */
    public String mo22161a() {
        if (this.f19498b.m22172a().isEmpty()) {
            return this.f19497a;
        }
        return this.f19497a + ' ' + m22174a(this.f19498b.m22172a());
    }
}
