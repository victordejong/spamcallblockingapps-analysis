package p193e.p194a.p294b.p371q;

import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.verifiedFeedback.FeedbackQuestion;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import e.m.e.k;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b.q.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/q/d.class */
public final class C8211d implements AbstractC8210c {

    /* renamed from: a */
    public final g f25353a = C25225a.m3978P1(C8212a.f25356b);

    /* renamed from: b */
    public final C20592g f25354b;

    /* renamed from: c */
    public final AbstractC19223c0 f25355c;

    /* renamed from: e.a.b.q.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/q/d$a.class */
    public static final class C8212a extends m implements a<k> {

        /* renamed from: b */
        public static final C8212a f25356b = new C8212a();

        public C8212a() {
            super(0);
        }

        public Object invoke() {
            return new k();
        }
    }

    @Inject
    public C8211d(C20592g c20592g, AbstractC19223c0 abstractC19223c0) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19223c0, "resourceProvider");
        this.f25354b = c20592g;
        this.f25355c = abstractC19223c0;
    }

    @Override // p193e.p194a.p294b.p371q.AbstractC8210c
    /* renamed from: a */
    public FeedbackQuestion mo28771a() {
        FeedbackQuestion feedbackQuestion;
        try {
            k kVar = (k) this.f25353a.getValue();
            C20592g c20592g = this.f25354b;
            Object f = kVar.f(((AbstractC20597i) c20592g.f57841U4.m10941a(c20592g, C20592g.f57695p6[312])).mo10938g(), FeedbackQuestion.class);
            l.d(f, "gson.fromJson(featuresRe…backQuestion::class.java)");
            feedbackQuestion = (FeedbackQuestion) f;
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            int mo13762h = this.f25355c.mo13762h(C3478R.integer.default_verified_feedback_question_id);
            String mo13768b = this.f25355c.mo13768b(C3478R.string.default_verified_feedback_question, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…rified_feedback_question)");
            feedbackQuestion = new FeedbackQuestion(mo13762h, mo13768b);
        }
        return feedbackQuestion;
    }

    @Override // p193e.p194a.p294b.p371q.AbstractC8210c
    /* renamed from: b */
    public boolean mo28770b(int i, Contact contact) {
        boolean z;
        l.e(contact, AnalyticsConstants.CONTACT);
        C20592g c20592g = this.f25354b;
        if (c20592g.f57813Q4.m10941a(c20592g, C20592g.f57695p6[308]).isEnabled() && i != 3) {
            if (contact.m35574A0() && contact.m35565G0()) {
                z = true;
            } else if (!contact.m35574A0() && !contact.m35506m0() && !contact.m35499r0()) {
                z = true;
                if (!contact.m35492v0()) {
                    if (contact.m35565G0()) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }
}
