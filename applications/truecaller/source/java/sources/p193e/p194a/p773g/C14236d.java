package p193e.p194a.p773g;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.data.AfterCallHistoryEvent;
import com.truecaller.acs.p131ui.fullscreen.AfterCallScreenActivity;
import com.truecaller.acs.p131ui.popup.AfterCallPopupActivity;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.HistoryEvent;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p773g.p785j.AbstractC14294m;
import s1.z.c.l;
/* renamed from: e.a.g.d */
/* loaded from: classes4-dex2jar.jar:e/a/g/d.class */
public final class C14236d implements AbstractC14235c {

    /* renamed from: a */
    public final Context f41135a;

    /* renamed from: b */
    public final a<AbstractC14294m> f41136b;

    @Inject
    public C14236d(Context context, a<AbstractC14294m> aVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "inCallUIHelper");
        this.f41135a = context;
        this.f41136b = aVar;
    }

    @Override // p193e.p194a.p773g.AbstractC14235c
    /* renamed from: a */
    public void mo20334a() {
        if (!mo20332c()) {
            return;
        }
        AfterCallScreenActivity.C2799a c2799a = AfterCallScreenActivity.f9719d;
        Context context = this.f41135a;
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent m36005a = c2799a.m36005a(context);
        m36005a.putExtra("ARG_CLOSE_FACS", true);
        context.startActivity(m36005a);
    }

    @Override // p193e.p194a.p773g.AbstractC14235c
    /* renamed from: b */
    public void mo20333b(AfterCallHistoryEvent afterCallHistoryEvent) {
        l.e(afterCallHistoryEvent, "afterCallHistoryEvent");
        if (!mo20332c()) {
            return;
        }
        AfterCallScreenActivity.f9719d.m36004b(this.f41135a, afterCallHistoryEvent);
    }

    @Override // p193e.p194a.p773g.AbstractC14235c
    /* renamed from: c */
    public boolean mo20332c() {
        return ((AbstractC14294m) this.f41136b.get()).mo20283a();
    }

    @Override // p193e.p194a.p773g.AbstractC14235c
    /* renamed from: d */
    public void mo20331d(HistoryEvent historyEvent, FilterMatch filterMatch, boolean z) {
        l.e(historyEvent, "historyEvent");
        l.e(filterMatch, "filterMatch");
        AfterCallPopupActivity.f9723g.m35997b(this.f41135a, historyEvent, filterMatch, z);
    }
}
