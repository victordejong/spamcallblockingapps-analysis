package p193e.p194a.p437c.p438a.p456d.p470g;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.financepage.search.view.SearchTrxActivity;
import com.truecaller.insights.p168ui.financepage.view.FinanceActivity;
import com.truecaller.p183ui.view.TintedImageView;
import java.util.LinkedHashMap;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p477g.C9009a;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.g.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/g.class */
public final class View$OnClickListenerC8947g implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9009a f27226a;

    /* renamed from: b */
    public final /* synthetic */ FinanceActivity f27227b;

    public View$OnClickListenerC8947g(C9009a c9009a, FinanceActivity financeActivity) {
        this.f27226a = c9009a;
        this.f27227b = financeActivity;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [android.content.Context, com.truecaller.insights.ui.financepage.view.FinanceActivity, java.lang.Object, android.app.Activity] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        FinanceActivity financeActivity = this.f27227b;
        int i = FinanceActivity.f12754g;
        C9116j c9116j = financeActivity.m35196qa().f27035m;
        boolean z = true;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("subtab_finance_tabs", "<set-?>");
        l.e("search_button", "<set-?>");
        l.e("sub_tabs", "<set-?>");
        l.e("click", "<set-?>");
        l.e("finance_page", "<set-?>");
        if ("subtab_finance_tabs".length() <= 0) {
            z = false;
        }
        if (z) {
            c9116j.m27867a(new C10529b(new SimpleAnalyticsModel("subtab_finance_tabs", "search_button", "", "finance_page", "click", "sub_tabs", 0L, null, false, 448, null), i.W0(linkedHashMap)));
            ?? r0 = this.f27227b;
            l.e((Object) r0, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent((Context) r0, SearchTrxActivity.class);
            FinanceActivity financeActivity2 = this.f27227b;
            TintedImageView tintedImageView = this.f27226a.f27364h;
            l.d(tintedImageView, "searchBtn");
            Objects.requireNonNull(financeActivity2);
            ActivityOptions makeClipRevealAnimation = ActivityOptions.makeClipRevealAnimation(tintedImageView, 0, 0, tintedImageView.getMeasuredWidth(), tintedImageView.getMeasuredHeight());
            r0.startActivity(intent, makeClipRevealAnimation != null ? makeClipRevealAnimation.toBundle() : null);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
