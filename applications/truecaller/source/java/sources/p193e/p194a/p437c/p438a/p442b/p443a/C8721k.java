package p193e.p194a.p437c.p438a.p442b.p443a;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.Iterator;
import java.util.LinkedHashMap;
import p193e.p194a.p437c.p438a.p521s.p522g.C9607f;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.b.a.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/k.class */
public final class C8721k extends m implements p<C8704d0, C9607f<C8704d0>, s> {

    /* renamed from: b */
    public final /* synthetic */ C8712f f26656b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8721k(C8712f c8712f) {
        super(2);
        this.f26656b = c8712f;
    }

    /* renamed from: k */
    public Object m28102k(Object obj, Object obj2) {
        C8704d0 c8704d0 = (C8704d0) obj;
        C9607f c9607f = (C9607f) obj2;
        l.e(c8704d0, RemoteMessageConst.Notification.TAG);
        l.e(c9607f, "tagView");
        c9607f.postDelayed(new RunnableC8720j(this, c8704d0), 600L);
        Iterator<T> it = this.f26656b.f26644h.iterator();
        while (it.hasNext()) {
            C9607f c9607f2 = (C9607f) it.next();
            if (!l.a((C8704d0) c9607f2.getMetadata(), c8704d0)) {
                c9607f2.m27394e();
            }
        }
        String m28108PA = C8712f.m28108PA(this.f26656b);
        boolean m28109OA = C8712f.m28109OA(this.f26656b);
        AbstractC10651b m28105SA = this.f26656b.m28105SA();
        if (m28105SA == null) {
            AbstractC10060c m28107QA = this.f26656b.m28107QA();
            String str = c8704d0.f26626b.f31741a;
            l.e(m28108PA, "senderId");
            l.e(str, "selectedTag");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e("", "feature");
            l.e("", "eventCategory");
            l.e("", "eventInfo");
            l.e("", AnalyticsConstants.CONTEXT);
            l.e("", "actionType");
            l.e("", "actionInfo");
            l.e(linkedHashMap, "propertyMap");
            l.e("tag_bottomsheet", "<set-?>");
            String m26803a = C10031q.m26803a(m28108PA, m28109OA);
            l.e(m26803a, "<set-?>");
            l.e(str, "<set-?>");
            l.e("click", "<set-?>");
            l.e("conversation_view", "<set-?>");
            m28107QA.mo26757a(new C10529b(new SimpleAnalyticsModel("tag_bottomsheet", str, m26803a, "conversation_view", "click", "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
        } else {
            AbstractC10060c m28107QA2 = this.f26656b.m28107QA();
            String str2 = m28105SA.f31741a;
            String str3 = c8704d0.f26626b.f31741a;
            l.e(m28108PA, "senderId");
            l.e(str2, "oldTag");
            l.e(str3, "selectedTag");
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            l.e("", "feature");
            l.e("", "eventCategory");
            l.e("", "eventInfo");
            l.e("", AnalyticsConstants.CONTEXT);
            l.e("", "actionType");
            l.e("", "actionInfo");
            l.e(linkedHashMap2, "propertyMap");
            l.e("tag_bottomsheet", "<set-?>");
            String m26803a2 = C10031q.m26803a(m28108PA, m28109OA);
            l.e(m26803a2, "<set-?>");
            l.e(str2, "<set-?>");
            l.e(str3, "<set-?>");
            l.e("click", "<set-?>");
            l.e("user_tag", "<set-?>");
            m28107QA2.mo26757a(new C10529b(new SimpleAnalyticsModel("tag_bottomsheet", str2, m26803a2, "user_tag", "click", str3, 0L, null, false, 448, null), i.W0(linkedHashMap2)));
        }
        return s.a;
    }
}
