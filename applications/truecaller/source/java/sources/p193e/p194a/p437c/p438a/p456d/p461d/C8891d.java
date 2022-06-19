package p193e.p194a.p437c.p438a.p456d.p461d;

import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1868v.C27010k0;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.d.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/d.class */
public final class C8891d implements AbstractC8890c {

    /* renamed from: a */
    public final C8904f f27089a;

    /* renamed from: b */
    public final f f27090b;

    /* renamed from: c */
    public final C8888a f27091c;

    @Inject
    public C8891d(C8904f c8904f, @Named("IO") f fVar, C8888a c8888a) {
        l.e(c8904f, "financePageUseCase");
        l.e(fVar, "ioContext");
        l.e(c8888a, "financeBoundaryUseCase");
        this.f27089a = c8904f;
        this.f27090b = fVar;
        this.f27091c = c8888a;
    }

    @Override // p193e.p194a.p437c.p438a.p456d.p461d.AbstractC8890c
    /* renamed from: a */
    public C8889b mo27980a(FinanceTab financeTab, List<C9234a> list, C27010k0<Boolean> c27010k0, String str) {
        l.e(financeTab, "financeTab");
        l.e(list, "filters");
        return new C8889b(this.f27089a, this.f27090b, this.f27091c, financeTab, list, c27010k0, str);
    }
}
