package p599h.p600d0.p602f;

import java.io.IOException;
import p599h.AbstractC10238t;
import p599h.C10091a0;
import p599h.C10244w;
import p599h.C10250y;
import p599h.p600d0.p603g.C10143g;
/* renamed from: h.d0.f.a */
/* loaded from: classes2-dex2jar.jar:h/d0/f/a.class */
public final class C10127a implements AbstractC10238t {

    /* renamed from: a */
    public final C10244w f37393a;

    public C10127a(C10244w wVar) {
        this.f37393a = wVar;
    }

    @Override // p599h.AbstractC10238t
    /* renamed from: a */
    public C10091a0 mo902a(AbstractC10238t.AbstractC10239a aVar) throws IOException {
        C10143g gVar = (C10143g) aVar;
        C10250y i = gVar.mo897i();
        C10133f h = gVar.m1303h();
        return gVar.m1308a(i, h, h.m1344a(this.f37393a, aVar, !i.m815e().equals("GET")), h.m1338c());
    }
}
