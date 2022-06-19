package p193e.p194a.p437c.p580r.p582e.p584b;

import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.pdo.PdoBinderType;
import p193e.p1681q.p1698e.p1699b.AbstractC25217f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10542b;
import s1.z.c.l;
/* renamed from: e.a.c.r.e.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/e/b/a.class */
public final class C10535a implements AbstractC25217f<Long> {

    /* renamed from: a */
    public final ParsedDataObject f31446a;

    /* renamed from: b */
    public final AbstractC10542b f31447b;

    public C10535a(ParsedDataObject parsedDataObject, AbstractC10542b abstractC10542b) {
        l.e(parsedDataObject, "model");
        l.e(abstractC10542b, "insightsBinder");
        this.f31446a = parsedDataObject;
        this.f31447b = abstractC10542b;
    }

    @Override // p193e.p1681q.p1698e.p1699b.AbstractC25217f
    /* renamed from: a */
    public String mo4059a() {
        return this.f31447b.mo25790c(this.f31446a).mo25783b();
    }

    @Override // p193e.p1681q.p1698e.p1699b.AbstractC25217f
    /* renamed from: b */
    public String mo4058b(String str) {
        return (str == null || !(this.f31447b.getBinder() instanceof PdoBinderType.PdoBinder)) ? "" : C10480a.m25887u3(this.f31447b, this.f31446a, str, false, 4, null);
    }

    @Override // p193e.p1681q.p1698e.p1699b.AbstractC25217f
    /* renamed from: c */
    public long mo4057c() {
        return this.f31446a.getMsgDate().getTime();
    }

    @Override // p193e.p1681q.p1698e.p1699b.AbstractC25217f
    /* renamed from: d */
    public Long mo4056d() {
        return Long.valueOf(this.f31446a.getMessageID());
    }

    @Override // p193e.p1681q.p1698e.p1699b.AbstractC25217f
    /* renamed from: e */
    public Float mo4055e(String str) {
        if (str == null || !(this.f31447b.getBinder() instanceof PdoBinderType.PdoBinder)) {
            return null;
        }
        return Float.valueOf(Float.parseFloat(C10480a.m25887u3(this.f31447b, this.f31446a, str, false, 4, null)));
    }
}
