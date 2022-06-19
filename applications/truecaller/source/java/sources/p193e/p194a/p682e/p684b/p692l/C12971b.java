package p193e.p194a.p682e.p684b.p692l;

import com.truecaller.TrueApp;
import com.truecaller.service.p176t9.RefreshT9MappingWorker;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p193e.p194a.p1342w4.p1345t.p1346a.C21297c;
import p193e.p194a.p1342w4.p1345t.p1346a.C21299d;
import p193e.p194a.p937j4.p939b.p940a.C15565c;
import p193e.p194a.p937j4.p939b.p941b.C15576b;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.e.b.l.b */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/l/b.class */
public final class C12971b implements AbstractC12970a {
    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12970a
    /* renamed from: a */
    public Object mo22314a(Locale locale, d<? super C15576b> dVar) {
        C15576b m18677a = C15565c.m18677a(locale);
        l.d(m18677a, "LanguageDao.getLanguage(locale)");
        return m18677a;
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12970a
    /* renamed from: b */
    public Object mo22313b(d<? super List<? extends C15576b>> dVar) {
        List<C15576b> m18676b = C15565c.m18676b(true);
        l.d(m18676b, "LanguageDao.getT9Languages()");
        return m18676b;
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12970a
    /* renamed from: c */
    public void mo22312c(String str) {
        l.e(str, "iso");
        C21299d.m9929c(str);
        C21297c.m9935a();
        HashMap hashMap = new HashMap();
        hashMap.put("RefreshT9MappingService.extra.rebuild_all", Boolean.TRUE);
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "Data.Builder()\n         …\n                .build()");
        TrueApp m36032b0 = TrueApp.m36032b0();
        l.d(m36032b0, "TrueApp.getApp()");
        AbstractC26857y mo11659D = m36032b0.mo10154s().mo11659D();
        l.d(mo11659D, "TrueApp.getApp().objectsGraph.workManager()");
        C26842r.C26843a c26843a = new C26842r.C26843a(RefreshT9MappingWorker.class);
        c26843a.f75127c.f74906e = c26829f;
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        mo11659D.m1279i("com.truecaller.service.t9.RefreshT9MappingWorker", EnumC26832h.REPLACE, m1272b);
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12970a
    /* renamed from: d */
    public Object mo22311d(String str, d<? super C15576b> dVar) {
        C15576b c15576b;
        Iterator<C15576b> it = C15565c.m18676b(false).iterator();
        while (true) {
            if (!it.hasNext()) {
                c15576b = C15565c.f44025a;
                break;
            }
            C15576b next = it.next();
            if (next.f44042j.f26267b.equalsIgnoreCase(str)) {
                c15576b = next;
                break;
            }
        }
        l.d(c15576b, "LanguageDao.getLanguage(iso)");
        return c15576b;
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12970a
    /* renamed from: e */
    public Object mo22310e(d<? super List<? extends C15576b>> dVar) {
        List<C15576b> m18676b = C15565c.m18676b(false);
        l.d(m18676b, "LanguageDao.getAllLanguages()");
        return m18676b;
    }
}
