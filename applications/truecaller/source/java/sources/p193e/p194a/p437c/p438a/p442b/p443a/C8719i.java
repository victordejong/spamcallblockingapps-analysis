package p193e.p194a.p437c.p438a.p442b.p443a;

import android.widget.CompoundButton;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/i.class */
public final class C8719i implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C8712f f26653a;

    public C8719i(C8712f c8712f) {
        this.f26653a = c8712f;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        String m28108PA = C8712f.m28108PA(this.f26653a);
        boolean m28109OA = C8712f.m28109OA(this.f26653a);
        AbstractC10651b m28105SA = this.f26653a.m28105SA();
        AbstractC10060c m28107QA = this.f26653a.m28107QA();
        String str = m28105SA != null ? m28105SA.f31741a : null;
        l.e(m28108PA, "senderId");
        String str2 = str == null || str.length() == 0 ? "add_tag" : "edit_tag";
        String str3 = z ? "allow" : "disallow";
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
        l.e("attach_message_preference", "<set-?>");
        l.e(str3, "<set-?>");
        boolean z2 = false;
        if (str2.length() > 0) {
            z2 = true;
        }
        if (z2) {
            m28107QA.mo26757a(new C10529b(new SimpleAnalyticsModel(str2, str, m26803a, "", "attach_message_preference", str3, 0L, null, false, 448, null), i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
