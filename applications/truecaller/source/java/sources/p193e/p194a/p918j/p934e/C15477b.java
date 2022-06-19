package p193e.p194a.p918j.p934e;

import android.content.Context;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.surveys.data.PostSurveyAnswersWorker;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.data.entities.Survey;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p918j.p930c.AbstractC15446b;
import p193e.p194a.p918j.p934e.AbstractC15489f;
import q3.b.b;
import q3.b.k.g;
import q3.b.l.a;
import s1.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.k;
import s1.z.c.l;
/* renamed from: e.a.j.e.b */
/* loaded from: classes14-dex2jar.jar:e/a/j/e/b.class */
public final class C15477b implements AbstractC15476a {

    /* renamed from: a */
    public Survey f43876a;

    /* renamed from: b */
    public String f43877b;

    /* renamed from: e */
    public boolean f43880e;

    /* renamed from: g */
    public Contact f43882g;

    /* renamed from: h */
    public final Context f43883h;

    /* renamed from: i */
    public final AbstractC15446b f43884i;

    /* renamed from: j */
    public final C15493g f43885j;

    /* renamed from: k */
    public final AbstractC15494h f43886k;

    /* renamed from: c */
    public final Map<Integer, Answer> f43878c = new LinkedHashMap();

    /* renamed from: d */
    public final Stack<Question> f43879d = new Stack<>();

    /* renamed from: f */
    public AbstractC15489f f43881f = AbstractC15489f.C15492c.f43910a;

    @e(c = "com.truecaller.surveys.utils.SurveyCoordinatorImpl", f = "SurveyCoordinator.kt", l = {87, 105}, m = "startSurvey")
    /* renamed from: e.a.j.e.b$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/e/b$a.class */
    public static final class C15478a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f43887d;

        /* renamed from: e */
        public int f43888e;

        /* renamed from: g */
        public Object f43890g;

        /* renamed from: h */
        public Object f43891h;

        /* renamed from: i */
        public Object f43892i;

        /* renamed from: j */
        public Object f43893j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15478a(d dVar) {
            super(dVar);
            C15477b.this = r4;
        }

        /* renamed from: s */
        public final Object m18776s(Object obj) {
            this.f43887d = obj;
            this.f43888e |= Integer.MIN_VALUE;
            return C15477b.this.mo18780c(null, this);
        }
    }

    @Inject
    public C15477b(Context context, AbstractC15446b abstractC15446b, C15493g c15493g, AbstractC15494h abstractC15494h) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC15446b, "surveysRepository");
        l.e(c15493g, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC15494h, "surveysHelper");
        this.f43883h = context;
        this.f43884i = abstractC15446b;
        this.f43885j = c15493g;
        this.f43886k = abstractC15494h;
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15476a
    /* renamed from: a */
    public void mo18782a() {
        Integer num;
        Object obj;
        Answer answer = this.f43878c.get(Integer.valueOf(m18778e().getId()));
        if (answer != null) {
            Answer answer2 = answer;
            Question m18778e = m18778e();
            if (m18778e instanceof Question.FreeText) {
                num = ((Question.FreeText) m18778e()).getFollowupQuestionId();
            } else if (m18778e instanceof Question.Binary) {
                num = ((Answer.Binary) answer2).getChoice().getFollowupQuestionId();
            } else if (m18778e instanceof Question.SingleChoice) {
                num = ((Answer.SingleChoice) answer2).getChoice().getFollowupQuestionId();
            } else if (!(m18778e instanceof Question.Rating)) {
                throw new i();
            } else {
                num = ((Answer.Rating) answer2).getChoice().getFollowupQuestionId();
            }
            Survey survey = this.f43876a;
            if (survey == null) {
                l.l("survey");
                throw null;
            }
            Iterator<T> it = survey.getQuestions().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (num != null && ((Question) obj).getId() == num.intValue()) {
                    break;
                }
            }
            Question question = (Question) obj;
            if (question != null) {
                this.f43879d.push(question);
                this.f43880e = m18777f();
                Question m18778e2 = m18778e();
                Survey survey2 = this.f43876a;
                if (survey2 != null) {
                    this.f43881f = new AbstractC15489f.C15490a(m18778e2, survey2.getFlow(), m18777f());
                    return;
                } else {
                    l.l("survey");
                    throw null;
                }
            }
            if (num != null && num.intValue() != 0) {
                StringBuilder m8728C = C22128a.m8728C("Invalid state: Survey with id: ");
                Survey survey3 = this.f43876a;
                if (survey3 == null) {
                    l.l("survey");
                    throw null;
                }
                m8728C.append(survey3.getId());
                m8728C.append(" doesn't have a followup question with id: ");
                m8728C.append(num);
                AssertionUtil.reportWeirdnessButNeverCrash(m8728C.toString());
            }
            this.f43881f = AbstractC15489f.C15491b.f43909a;
            this.f43882g = null;
            this.f43879d.clear();
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15476a
    /* renamed from: b */
    public Contact mo18781b() {
        return this.f43882g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0318  */
    @Override // p193e.p194a.p918j.p934e.AbstractC15476a
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18780c(com.truecaller.data.entity.Contact r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p918j.p934e.C15477b.mo18780c(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15476a
    /* renamed from: d */
    public void mo18779d(Answer answer) {
        l.e(answer, "answer");
        Map<Integer, Answer> map = this.f43878c;
        map.remove(Integer.valueOf(m18778e().getId()));
        map.put(Integer.valueOf(m18778e().getId()), answer);
        Context context = this.f43883h;
        Survey survey = this.f43876a;
        if (survey == null) {
            l.l("survey");
            throw null;
        }
        Map<Integer, Answer> map2 = this.f43878c;
        String str = this.f43877b;
        if (str == null) {
            l.l("surveyUUID");
            throw null;
        }
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(survey, "survey");
        l.e(map2, "answers");
        l.e(str, "surveyUUID");
        HashMap hashMap = new HashMap();
        a.a aVar = a.b;
        Objects.requireNonNull(Survey.Companion);
        hashMap.put("survey_as_json_key", aVar.b(Survey.C4554a.f15086a, survey));
        s1.a.a.a.v0.f.d.l3(k.a);
        g gVar = g.b;
        b<Answer> m34693a = Answer.Companion.m34693a();
        l.e(gVar, "keySerializer");
        l.e(m34693a, "valueSerializer");
        hashMap.put("answers_as_json_key", aVar.b(new q3.b.k.i(gVar, m34693a), map2));
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "Builder()\n              …\n                .build()");
        C26702l m1431n = C26702l.m1431n(context);
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(PostSurveyAnswersWorker.class);
        c26843a.f75127c.f74906e = c26829f;
        C26842r.C26843a m1268f = c26843a.m1268f(10L, TimeUnit.MINUTES);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        m1268f.f75127c.f74911j = new C26825d(c26826a);
        m1431n.m1279i(str, enumC26832h, m1268f.m1272b());
    }

    /* renamed from: e */
    public final Question m18778e() {
        Question peek = this.f43879d.peek();
        l.d(peek, "questionsStack.peek()");
        return peek;
    }

    /* renamed from: f */
    public final boolean m18777f() {
        Survey survey = this.f43876a;
        if (survey != null) {
            return survey.getBottomSheetQuestionsIds().contains(Integer.valueOf(m18778e().getId())) || this.f43880e;
        }
        l.l("survey");
        throw null;
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15476a
    public AbstractC15489f getState() {
        return this.f43881f;
    }
}
