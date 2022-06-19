package p193e.p194a.p918j.p934e;

import com.truecaller.data.entity.ContactSurvey;
import com.truecaller.surveys.data.entities.Survey;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p918j.p930c.AbstractC15446b;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.j.e.i */
/* loaded from: classes14-dex2jar.jar:e/a/j/e/i.class */
public final class C15495i implements AbstractC15494h {

    /* renamed from: a */
    public final AbstractC15446b f43912a;

    /* renamed from: b */
    public final C8601l0 f43913b;

    @e(c = "com.truecaller.surveys.utils.SurveysHelperImpl", f = "SurveysHelper.kt", l = {55}, m = "shouldShowBizSurvey")
    /* renamed from: e.a.j.e.i$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/e/i$a.class */
    public static final class C15496a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f43914d;

        /* renamed from: e */
        public int f43915e;

        /* renamed from: g */
        public Object f43917g;

        /* renamed from: h */
        public Object f43918h;

        /* renamed from: i */
        public Object f43919i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15496a(d dVar) {
            super(dVar);
            C15495i.this = r4;
        }

        /* renamed from: s */
        public final Object m18768s(Object obj) {
            this.f43914d = obj;
            this.f43915e |= Integer.MIN_VALUE;
            return C15495i.this.m18770b(null, null, this);
        }
    }

    @e(c = "com.truecaller.surveys.utils.SurveysHelperImpl", f = "SurveysHelper.kt", l = {42}, m = "shouldShowSurvey")
    /* renamed from: e.a.j.e.i$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/e/i$b.class */
    public static final class C15497b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f43920d;

        /* renamed from: e */
        public int f43921e;

        /* renamed from: g */
        public Object f43923g;

        /* renamed from: h */
        public Object f43924h;

        /* renamed from: i */
        public Object f43925i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15497b(d dVar) {
            super(dVar);
            C15495i.this = r4;
        }

        /* renamed from: s */
        public final Object m18767s(Object obj) {
            this.f43920d = obj;
            this.f43921e |= Integer.MIN_VALUE;
            return C15495i.this.m18769c(null, null, this);
        }
    }

    @Inject
    public C15495i(AbstractC15446b abstractC15446b, C8601l0 c8601l0) {
        l.e(abstractC15446b, "surveysRepository");
        l.e(c8601l0, "timestampUtil");
        this.f43912a = abstractC15446b;
        this.f43913b = c8601l0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* renamed from: a */
    public boolean m18771a(Survey survey, ContactSurvey contactSurvey) {
        l.e(survey, "survey");
        l.e(contactSurvey, "contactSurvey");
        C8601l0 c8601l0 = this.f43913b;
        long lastTimeSeen = survey.getLastTimeSeen();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        Long frequency = contactSurvey.getFrequency();
        return c8601l0.m28259b(lastTimeSeen, timeUnit.toMillis((frequency != null ? frequency.longValue() : false) == true ? 1L : 0L));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m18770b(com.truecaller.data.entity.Contact r6, p193e.p194a.p918j.p934e.AbstractC15487e r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p918j.p934e.C15495i.m18770b(com.truecaller.data.entity.Contact, e.a.j.e.e, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0144, code lost:
        if (r0.f43905b == false) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d2  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m18769c(com.truecaller.data.entity.Contact r6, p193e.p194a.p918j.p934e.AbstractC15487e r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p918j.p934e.C15495i.m18769c(com.truecaller.data.entity.Contact, e.a.j.e.e, s1.w.d):java.lang.Object");
    }
}
