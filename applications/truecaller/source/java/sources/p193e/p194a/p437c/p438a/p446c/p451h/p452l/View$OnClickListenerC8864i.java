package p193e.p194a.p437c.p438a.p446c.p451h.p452l;

import android.content.Context;
import android.view.View;
import android.webkit.URLUtil;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p438a.p493l.C9245c;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p570j.AbstractC10439b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10584c;
import p193e.p194a.p437c.p580r.p589j.C10636t;
import p193e.p194a.p437c.p580r.p589j.C10637u;
import s1.f0.r;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.h.l.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/l/i.class */
public final class View$OnClickListenerC8864i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C8860g f27007a;

    /* renamed from: b */
    public final /* synthetic */ C9245c f27008b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC9235b.C9242g f27009c;

    public View$OnClickListenerC8864i(C8860g c8860g, C9245c c9245c, AbstractC9235b.C9242g c9242g) {
        this.f27007a = c8860g;
        this.f27008b = c9245c;
        this.f27009c = c9242g;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C9245c c9245c = this.f27008b;
        c9245c.m27781a();
        C8860g c8860g = this.f27007a;
        AbstractC9235b.C9242g c9242g = this.f27009c;
        AbstractC10567a abstractC10567a = c9245c.f28128b;
        Objects.requireNonNull(c8860g);
        if (abstractC10567a instanceof AbstractC10567a.AbstractC10568a.C10570b) {
            AbstractC10584c abstractC10584c = ((AbstractC10567a.AbstractC10568a.C10570b) abstractC10567a).f31519k;
            Objects.requireNonNull(abstractC10584c, "null cannot be cast to non-null type com.truecaller.insights.models.smartcards.PayBillUseCase");
            C10637u c10637u = (C10637u) abstractC10584c;
            AbstractC10439b abstractC10439b = c8860g.f26997m;
            View view2 = c8860g.itemView;
            l.d(view2, "itemView");
            Context context = view2.getContext();
            l.d(context, "itemView.context");
            l.e(abstractC10439b, "deeplinkEnricher");
            l.e(context, AnalyticsConstants.CONTEXT);
            abstractC10439b.mo26135a(c10637u.f31688k, new C10636t(context));
        } else if (!(abstractC10567a instanceof AbstractC10567a.C10574e)) {
        } else {
            String str = ((AbstractC10567a.C10574e) abstractC10567a).f31531d;
            boolean z = true;
            if (!(!r.p(str))) {
                str = null;
            }
            if (str == null) {
                return;
            }
            View view3 = c8860g.itemView;
            l.d(view3, "itemView");
            C8613t.m28203i(view3.getContext(), URLUtil.guessUrl(str));
            String m25922n3 = C10480a.m25922n3(abstractC10567a.mo25780b(), null, 1);
            AbstractC9114h abstractC9114h = c8860g.f26994j;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e("", "feature");
            l.e("", "eventCategory");
            l.e("", "eventInfo");
            l.e("", AnalyticsConstants.CONTEXT);
            l.e("", "actionType");
            l.e("", "actionInfo");
            l.e(linkedHashMap, "propertyMap");
            String str2 = c8860g.f26995k.f26535a;
            l.e(str2, "<set-?>");
            String str3 = c9242g.f28107p;
            C22128a.m8703I0(str3, "<set-?>", "click", "<set-?>", m25922n3, "<set-?>");
            String m26803a = C10031q.m26803a(c9242g.f28097f, c9242g.f28109r);
            l.e(m26803a, "<set-?>");
            String str4 = c8860g.f26995k.f26536b;
            l.e(str4, "<set-?>");
            if (str2.length() <= 0) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            abstractC9114h.mo27869Zd(new C10529b(new SimpleAnalyticsModel(str2, str3, m26803a, str4, "click", m25922n3, 0L, null, false, 448, null), i.W0(linkedHashMap)));
        }
    }
}
