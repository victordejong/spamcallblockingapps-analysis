package p193e.p194a.p437c.p438a.p446c.p449f;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import com.truecaller.insights.p168ui.updatespage.view.UpdatesActivity;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p438a.p446c.p450g.C8833c;
import p193e.p194a.p437c.p438a.p446c.p450g.C8836f;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import q3.a.x2.d1;
import s1.s;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.c.f.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/j.class */
public final class C8813j extends AbstractC9107c<s, C8836f> {

    /* renamed from: b */
    public final AbstractC10497d f26885b;

    /* renamed from: c */
    public final f f26886c;

    /* renamed from: d */
    public final AbstractC9691j f26887d;

    /* renamed from: e */
    public final AbstractC10028o f26888e;

    /* renamed from: e.a.c.a.c.f.j$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/j$a.class */
    public static final class C8814a extends m implements l<Context, s> {

        /* renamed from: b */
        public static final C8814a f26889b = new C8814a();

        public C8814a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28039d(Object obj) {
            Context context = (Context) obj;
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            context.startActivity(new Intent(context, UpdatesActivity.class));
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8813j(AbstractC10497d abstractC10497d, @Named("IO") f fVar, AbstractC9691j abstractC9691j, AbstractC10028o abstractC10028o) {
        super(fVar);
        s1.z.c.l.e(abstractC10497d, "businessInsightsManager");
        s1.z.c.l.e(fVar, "ioContext");
        s1.z.c.l.e(abstractC9691j, "insightsStatusProvider");
        s1.z.c.l.e(abstractC10028o, "insightsConfig");
        this.f26885b = abstractC10497d;
        this.f26886c = fVar;
        this.f26887d = abstractC9691j;
        this.f26888e = abstractC10028o;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public C8836f mo27441a() {
        return new C8836f(new AdapterItem.C4117i(C4078R.string.updates, null, 0L, m28040d(0), null, !this.f26888e.mo26824p0() ? Integer.valueOf(C4078R.string.updates_page_view_all_tooltip) : null, null, 86), null);
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: b */
    public q3.a.x2.f<C8836f> mo27440b(s sVar) {
        s1.z.c.l.e(sVar, "input");
        return new d1(new C8811i(this, null));
    }

    /* renamed from: d */
    public final C8833c m28040d(int i) {
        return (!this.f26887d.mo27274U() || i <= 0) ? null : new C8833c(C4078R.string.view_all, C8814a.f26889b);
    }
}
