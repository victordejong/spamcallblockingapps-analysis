package p193e.p194a.p437c.p438a.p439a.p440a.p441a;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.financepage.view.FinanceActivity;
import com.truecaller.insights.p168ui.markedimportantpage.view.MarkedImportantPageActivity;
import com.truecaller.insights.p168ui.models.AdapterItem;
import com.truecaller.insights.p168ui.reminders.view.RemindersActivity;
import com.truecaller.insights.p168ui.updatespage.view.UpdatesActivity;
import java.util.LinkedHashMap;
import p193e.p194a.p437c.p438a.p477g.C9066r0;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.s;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.a.a.a.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/p.class */
public final class C8677p extends AbstractC8665e<AdapterItem.C4115g> {

    /* renamed from: e */
    public final l<View, s> f26563e = new C8678a();

    /* renamed from: f */
    public final C9066r0 f26564f;

    /* renamed from: g */
    public final AbstractC9114h f26565g;

    /* renamed from: h */
    public final AbstractC9691j f26566h;

    /* renamed from: e.a.c.a.a.a.a.p$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/p$a.class */
    public static final class C8678a extends m implements l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8678a() {
            super(1);
            C8677p.this = r4;
        }

        /* renamed from: d */
        public Object m28118d(Object obj) {
            String str;
            View view = (View) obj;
            s1.z.c.l.e(view, ViewAction.VIEW);
            boolean z = true;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            s1.z.c.l.e("", "feature");
            s1.z.c.l.e("", "eventCategory");
            s1.z.c.l.e("", "eventInfo");
            s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
            s1.z.c.l.e("", "actionType");
            s1.z.c.l.e("", "actionInfo");
            s1.z.c.l.e(linkedHashMap, "propertyMap");
            s1.z.c.l.e("inner_page_access", "<set-?>");
            s1.z.c.l.e("click", "<set-?>");
            s1.z.c.l.e("important_tab", "<set-?>");
            Context context = view.getContext();
            if (s1.z.c.l.a(view, C8677p.this.f26564f.f27639b)) {
                if (C8677p.this.f26566h.mo27281N()) {
                    context.startActivity(new Intent(context, RemindersActivity.class));
                    str = "reminders_page";
                    s1.z.c.l.e("reminders_page", "<set-?>");
                } else {
                    Toast.makeText(context, "Coming soon", 0).show();
                    str = "";
                }
            } else if (s1.z.c.l.a(view, C8677p.this.f26564f.f27642e)) {
                if (C8677p.this.f26566h.mo27274U()) {
                    context.startActivity(new Intent(context, UpdatesActivity.class));
                    str = "updates_page";
                    s1.z.c.l.e("updates_page", "<set-?>");
                } else {
                    Toast.makeText(context, "Coming soon", 0).show();
                    str = "";
                }
            } else if (s1.z.c.l.a(view, C8677p.this.f26564f.f27641d)) {
                context.startActivity(new Intent(context, FinanceActivity.class));
                str = "finance_page";
                s1.z.c.l.e("finance_page", "<set-?>");
            } else {
                if (s1.z.c.l.a(view, C8677p.this.f26564f.f27640c)) {
                    context.startActivity(new Intent(context, MarkedImportantPageActivity.class));
                    str = "starred_page";
                    s1.z.c.l.e("starred_page", "<set-?>");
                }
                str = "";
            }
            AbstractC9114h abstractC9114h = C8677p.this.f26565g;
            if ("inner_page_access".length() <= 0) {
                z = false;
            }
            if (z) {
                abstractC9114h.mo27869Zd(new C10529b(new SimpleAnalyticsModel("inner_page_access", str, "", "important_tab", "click", "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
                return s.a;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8677p(p193e.p194a.p437c.p438a.p477g.C9066r0 r6, p193e.p194a.p437c.p438a.p479i.AbstractC9114h r7, p193e.p194a.p437c.p524b.AbstractC9691j r8) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "binding"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            java.lang.String r1 = "analyticsLogger"
            s1.z.c.l.e(r0, r1)
            r0 = r8
            java.lang.String r1 = "statusProvider"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            com.google.android.material.card.MaterialCardView r0 = r0.f27638a
            r9 = r0
            r0 = r9
            java.lang.String r1 = "binding.root"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r9
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r5
            r1 = r6
            r0.f26564f = r1
            r0 = r5
            r1 = r7
            r0.f26565g = r1
            r0 = r5
            r1 = r8
            r0.f26566h = r1
            r0 = r5
            e.a.c.a.a.a.a.p$a r1 = new e.a.c.a.a.a.a.p$a
            r2 = r1
            r3 = r5
            r2.<init>()
            r0.f26563e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8677p.<init>(e.a.c.a.g.r0, e.a.c.a.i.h, e.a.c.b.j):void");
    }

    @Override // p193e.p194a.p437c.p438a.p439a.p440a.p441a.AbstractC8665e
    /* renamed from: S4 */
    public void mo27509S4(AdapterItem.C4115g c4115g) {
        s1.z.c.l.e(c4115g, "item");
    }
}
