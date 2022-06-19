package p193e.p194a.p294b.p357o.p365f.p368c;

import com.truecaller.bizmon.C3478R;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import s1.z.c.l;
/* renamed from: e.a.b.o.f.c.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/c/h.class */
public final class C8182h {

    /* renamed from: a */
    public final AbstractC19223c0 f25311a;

    @Inject
    public C8182h(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        this.f25311a = abstractC19223c0;
    }

    /* renamed from: a */
    public void m28836a(AbstractC8183i abstractC8183i, String str, int i) {
        l.e(abstractC8183i, "districtView");
        l.e(str, "districtName");
        abstractC8183i.mo28834x1(str);
        String mo13759k = this.f25311a.mo13759k(C3478R.plurals.biz_govt_contacts_count, i, Integer.valueOf(i));
        l.d(mo13759k, "resourceProvider.getQuan…ontacts\n                )");
        abstractC8183i.mo28835M4(mo13759k);
    }
}
