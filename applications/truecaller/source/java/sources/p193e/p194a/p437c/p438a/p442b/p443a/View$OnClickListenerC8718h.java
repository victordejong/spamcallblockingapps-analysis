package p193e.p194a.p437c.p438a.p442b.p443a;

import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p442b.p443a.C8696b;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/h.class */
public final class View$OnClickListenerC8718h implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C8712f f26652a;

    public View$OnClickListenerC8718h(C8712f c8712f) {
        this.f26652a = c8712f;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String m28108PA = C8712f.m28108PA(this.f26652a);
        boolean m28109OA = C8712f.m28109OA(this.f26652a);
        AbstractC10060c m28107QA = this.f26652a.m28107QA();
        l.e(m28108PA, "senderId");
        boolean z = true;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("important_message_feedback", "<set-?>");
        String m26803a = C10031q.m26803a(m28108PA, m28109OA);
        l.e(m26803a, "<set-?>");
        l.e("click", "<set-?>");
        l.e("learn_more", "<set-?>");
        l.e("bottom_sheet", "<set-?>");
        if ("important_message_feedback".length() <= 0) {
            z = false;
        }
        if (z) {
            m28107QA.mo26757a(new C10529b(new SimpleAnalyticsModel("important_message_feedback", "", m26803a, "bottom_sheet", "click", "learn_more", 0L, null, false, 448, null), i.W0(linkedHashMap)));
            C8696b.C8698b c8698b = C8696b.f26613f;
            Objects.requireNonNull(c8698b);
            C8696b c8696b = new C8696b();
            FragmentManager childFragmentManager = this.f26652a.getChildFragmentManager();
            Objects.requireNonNull(c8698b);
            c8696b.show(childFragmentManager, C8696b.f26612e);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
