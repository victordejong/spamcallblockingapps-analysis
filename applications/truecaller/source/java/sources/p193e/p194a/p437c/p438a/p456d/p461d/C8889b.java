package p193e.p194a.p437c.p438a.p456d.p461d;

import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import javax.inject.Named;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1909z.AbstractC27603v;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.d.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/b.class */
public final class C8889b extends AbstractC27603v.AbstractC27605b<Long, AdapterItem> {

    /* renamed from: a */
    public final C8904f f27082a;

    /* renamed from: b */
    public final f f27083b;

    /* renamed from: c */
    public final C8888a f27084c;

    /* renamed from: d */
    public final FinanceTab f27085d;

    /* renamed from: e */
    public final List<C9234a> f27086e;

    /* renamed from: f */
    public final C27010k0<Boolean> f27087f;

    /* renamed from: g */
    public final String f27088g;

    public C8889b(C8904f c8904f, @Named("IO") f fVar, C8888a c8888a, FinanceTab financeTab, List<C9234a> list, C27010k0<Boolean> c27010k0, String str) {
        l.e(c8904f, "financePageUseCase");
        l.e(fVar, "ioContext");
        l.e(c8888a, "financeBoundaryUseCase");
        l.e(financeTab, "financeTab");
        l.e(list, "filters");
        this.f27082a = c8904f;
        this.f27083b = fVar;
        this.f27084c = c8888a;
        this.f27085d = financeTab;
        this.f27086e = list;
        this.f27087f = c27010k0;
        this.f27088g = str;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [e.a.c.a.d.d.e, n3.z.v<java.lang.Long, com.truecaller.insights.ui.models.AdapterItem>] */
    @Override // p1727n3.p1909z.AbstractC27603v.AbstractC27605b
    /* renamed from: a */
    public AbstractC27603v<Long, AdapterItem> mo20a() {
        return new C8892e(this.f27082a, this.f27083b, this.f27084c, this.f27085d, this.f27086e, this.f27087f, this.f27088g);
    }
}
