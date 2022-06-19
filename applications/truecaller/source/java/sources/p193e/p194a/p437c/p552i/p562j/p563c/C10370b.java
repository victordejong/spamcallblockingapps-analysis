package p193e.p194a.p437c.p552i.p562j.p563c;

import e.m.e.k;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p554b.AbstractC10276a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.w.a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.i.j.c.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/j/c/b.class */
public final class C10370b implements AbstractC10369a {

    /* renamed from: b */
    public final String f30842b;

    /* renamed from: c */
    public final i0 f30843c;

    /* renamed from: e */
    public final CoroutineExceptionHandler f30845e;

    /* renamed from: f */
    public final f f30846f;

    /* renamed from: a */
    public final k f30841a = new k();

    /* renamed from: d */
    public final Set<String> f30844d = new LinkedHashSet();

    /* renamed from: e.a.c.i.j.c.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/j/c/b$a.class */
    public static final class C10371a extends a implements CoroutineExceptionHandler {
        public C10371a(CoroutineExceptionHandler.a aVar) {
            super(aVar);
        }

        public void handleException(f fVar, Throwable th) {
            C10263b.f30414d.m26508b(th, null);
        }
    }

    @Inject
    public C10370b(AbstractC10276a abstractC10276a, AbstractC9686e abstractC9686e, @Named("IO") f fVar) {
        l.e(abstractC10276a, "firebaseSeedStore");
        l.e(abstractC9686e, "environmentHelper");
        l.e(fVar, "ioContext");
        this.f30846f = fVar;
        this.f30842b = abstractC9686e.mo27306g();
        boolean z = true;
        i0 h = d.h(fVar.plus(d.n((p1) null, 1)));
        this.f30843c = h;
        int i = CoroutineExceptionHandler.d0;
        C10371a c10371a = new C10371a(CoroutineExceptionHandler.a.a);
        this.f30845e = c10371a;
        String mo26488l = abstractC10276a.mo26488l();
        if (mo26488l != null) {
            if (!(mo26488l.length() <= 0 ? false : z)) {
                return;
            }
            d.w2(h, c10371a, (j0) null, new C10372c(this, mo26488l, null), 2, (Object) null);
        }
    }

    @Override // p193e.p194a.p437c.p552i.p562j.p563c.AbstractC10369a
    /* renamed from: a */
    public boolean mo26273a(String str) {
        l.e(str, "rawAddress");
        String m26799e = C10031q.m26799e(str, this.f30842b);
        Set<String> set = this.f30844d;
        Locale locale = Locale.ENGLISH;
        l.d(locale, "Locale.ENGLISH");
        String lowerCase = m26799e.toLowerCase(locale);
        l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return set.contains(lowerCase);
    }
}
