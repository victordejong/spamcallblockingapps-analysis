package p193e.p194a.p936j3;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.util.KnownEndpoints;
import e.m.e.t;
import java.io.IOException;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import s1.z.c.l;
/* renamed from: e.a.j3.e */
/* loaded from: classes8-dex2jar.jar:e/a/j3/e.class */
public final class C15548e implements AbstractC15547d {
    @Override // p193e.p194a.p936j3.AbstractC15547d
    /* renamed from: a */
    public AbstractC19891x<Integer> mo18699a(String str) {
        AbstractC19891x<Integer> abstractC19891x;
        l.e(str, "webId");
        try {
            abstractC19891x = AbstractC19891x.m11834h(Integer.valueOf(((AbstractC15556h) C8367d.m28633a(KnownEndpoints.CONTACTREQUEST, AbstractC15556h.class)).m18692a(str).execute().a.e));
            l.d(abstractC19891x, "Promise.wrap<Int>(response.code())");
        } catch (IOException e) {
            abstractC19891x = AbstractC19891x.m11834h(-1);
            l.d(abstractC19891x, "Promise.wrap<Int>(UNKNOWN_ERROR)");
        }
        return abstractC19891x;
    }

    @Override // p193e.p194a.p936j3.AbstractC15547d
    /* renamed from: b */
    public AbstractC19891x<Integer> mo18698b(String str) {
        AbstractC19891x<Integer> abstractC19891x;
        l.e(str, "webId");
        try {
            abstractC19891x = AbstractC19891x.m11834h(Integer.valueOf(((AbstractC15556h) C8367d.m28633a(KnownEndpoints.CONTACTREQUEST, AbstractC15556h.class)).m18691b(str).execute().a.e));
            l.d(abstractC19891x, "Promise.wrap<Int>(response.code())");
        } catch (IOException e) {
            abstractC19891x = AbstractC19891x.m11834h(-1);
            l.d(abstractC19891x, "Promise.wrap<Int>(UNKNOWN_ERROR)");
        }
        return abstractC19891x;
    }

    @Override // p193e.p194a.p936j3.AbstractC15547d
    /* renamed from: c */
    public AbstractC19891x<Integer> mo18697c(String str, String str2) {
        AbstractC19891x<Integer> abstractC19891x;
        l.e(str, "receiver");
        l.e(str2, AnalyticsConstants.NAME);
        t tVar = new t();
        tVar.j("receiverName", str2);
        try {
            abstractC19891x = AbstractC19891x.m11834h(Integer.valueOf(((AbstractC15556h) C8367d.m28633a(KnownEndpoints.CONTACTREQUEST, AbstractC15556h.class)).m18690c(str, tVar).execute().a.e));
            l.d(abstractC19891x, "Promise.wrap<Int>(response.code())");
        } catch (IOException e) {
            abstractC19891x = AbstractC19891x.m11834h(-1);
            l.d(abstractC19891x, "Promise.wrap<Int>(UNKNOWN_ERROR)");
        }
        return abstractC19891x;
    }
}
