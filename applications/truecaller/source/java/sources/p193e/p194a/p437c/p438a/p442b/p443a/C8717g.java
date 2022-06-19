package p193e.p194a.p437c.p438a.p442b.p443a;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import e.m.a.g.e.d;
import java.util.LinkedHashMap;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/g.class */
public final class C8717g extends d {

    /* renamed from: o */
    public final /* synthetic */ C8712f f26651o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8717g(C8712f c8712f, Context context, int i) {
        super(context, i);
        this.f26651o = c8712f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onBackPressed() {
        C8712f c8712f = this.f26651o;
        if (c8712f.f26646j) {
            return;
        }
        String m28108PA = C8712f.m28108PA(c8712f);
        boolean m28109OA = C8712f.m28109OA(this.f26651o);
        AbstractC10651b m28105SA = this.f26651o.m28105SA();
        AbstractC10060c m28107QA = this.f26651o.m28107QA();
        String str = m28105SA != null ? m28105SA.f31741a : null;
        l.e(m28108PA, "senderId");
        String str2 = str == null || str.length() == 0 ? "add_tag" : "edit_tag";
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e(str2, "<set-?>");
        String m26803a = C10031q.m26803a(m28108PA, m28109OA);
        l.e(m26803a, "<set-?>");
        if (str == null) {
            str = "";
        }
        l.e(str, "<set-?>");
        l.e("click", "<set-?>");
        l.e("conversation_view", "<set-?>");
        l.e(AnalyticsConstants.BACK, "<set-?>");
        boolean z = false;
        if (str2.length() > 0) {
            z = true;
        }
        if (!z) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        m28107QA.mo26757a(new C10529b(new SimpleAnalyticsModel(str2, str, m26803a, "conversation_view", "click", AnalyticsConstants.BACK, 0L, null, false, 448, null), i.W0(linkedHashMap)));
        this.f26651o.f26645i = true;
        C8717g.super.onBackPressed();
    }
}
