package p193e.p194a.p773g.p774a.p778f0.p779a;

import android.app.Activity;
import android.widget.Toast;
import com.truecaller.acs.C2778R;
import com.truecaller.acs.analytics.AnalyticsContext;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p372b0.p373a.p374a.C8230h;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p678d4.AbstractC12595a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
/* renamed from: e.a.g.a.f0.a.i */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/f0/a/i.class */
public final class C14196i implements AbstractC14192e, AbstractC14190c {

    /* renamed from: a */
    public final C14195h f40950a = new C14195h(this);

    /* renamed from: b */
    public final C14194g f40951b = new C14194g(this);

    /* renamed from: c */
    public final C14193f f40952c = new C14193f(this);

    /* renamed from: d */
    public final Activity f40953d;

    /* renamed from: e */
    public final C14191d f40954e;

    /* renamed from: f */
    public final AbstractC12595a f40955f;

    /* renamed from: g */
    public final AbstractC19223c0 f40956g;

    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public C14196i(Activity activity, C14191d c14191d, AbstractC12595a abstractC12595a, AbstractC19223c0 abstractC19223c0) {
        l.e(activity, "activity");
        l.e(c14191d, "presenter");
        l.e(abstractC12595a, "appMarketUtil");
        l.e(abstractC19223c0, "resourceProvider");
        this.f40953d = activity;
        this.f40954e = c14191d;
        this.f40955f = abstractC12595a;
        this.f40956g = abstractC19223c0;
        c14191d.f57683a = this;
    }

    @Override // p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14190c
    /* renamed from: a */
    public void mo20593a() {
        String mo22846a = this.f40955f.mo22846a();
        if (mo22846a != null) {
            C8613t.m28203i(this.f40953d, mo22846a);
        }
    }

    @Override // p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14190c
    /* renamed from: b */
    public void mo20592b() {
        C8230h.C8233c c8233c = C8230h.f25388k;
        h hVar = this.f40953d;
        Objects.requireNonNull(hVar, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar2 = hVar;
        String mo13768b = this.f40956g.mo13768b(C2778R.string.FeedbackQuestionEnjoyingCallerId, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…QuestionEnjoyingCallerId)");
        String mo13768b2 = this.f40956g.mo13768b(C2778R.string.StrYes, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getString(R.string.StrYes)");
        C8230h.C8233c.m28762b(c8233c, hVar2, "", mo13768b, mo13768b2, this.f40956g.mo13768b(C2778R.string.FeedbackOptionDismiss, new Object[0]), Integer.valueOf(C2778R.C2779drawable.ic_rate_app_promo), this.f40950a, this.f40951b, this.f40952c, false, new C14188a(), 512);
    }

    @Override // p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14190c
    /* renamed from: c */
    public void mo20591c() {
        Toast.makeText(this.f40953d, this.f40956g.mo13768b(C2778R.string.FeedbackDismissedPermanently, new Object[0]), 0).show();
    }

    /* renamed from: d */
    public void m20590d(AnalyticsContext analyticsContext, AbstractC14189b abstractC14189b) {
        l.e(analyticsContext, "analyticsContext");
        l.e(abstractC14189b, "listener");
        C14191d c14191d = this.f40954e;
        Objects.requireNonNull(c14191d);
        l.e(analyticsContext, "analyticsContext");
        l.e(abstractC14189b, "listener");
        c14191d.f40941b = analyticsContext.getValue();
        c14191d.f40942c = abstractC14189b;
        Objects.requireNonNull(c14191d.f40944e);
        C15571h.m18626y("FEEDBACK_HAS_ASKED_AFTERCALL", true);
        Objects.requireNonNull(c14191d.f40944e);
        C15571h.m18654B("GOOGLE_REVIEW_ASK_TIMESTAMP");
        AbstractC14190c abstractC14190c = (AbstractC14190c) c14191d.f57683a;
        if (abstractC14190c != null) {
            abstractC14190c.mo20592b();
        }
    }
}
