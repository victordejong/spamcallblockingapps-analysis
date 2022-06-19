package p193e.p194a.p918j.p934e;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.data.entities.SurveyFlow;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.question.freetext.SuggestionType;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p918j.p934e.AbstractC15489f;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.a.a.a.v0.f.d;
import s1.i;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.j.e.d */
/* loaded from: classes14-dex2jar.jar:e/a/j/e/d.class */
public final class C15480d implements AbstractC15479c {

    /* renamed from: a */
    public final a1<AbstractC15481a> f43894a;

    /* renamed from: b */
    public final i1<AbstractC15481a> f43895b;

    /* renamed from: c */
    public final AbstractC15476a f43896c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC14535n> f43897d;

    /* renamed from: e.a.j.e.d$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/e/d$a.class */
    public static abstract class AbstractC15481a {

        /* renamed from: e.a.j.e.d$a$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/e/d$a$a.class */
        public static final class C15482a extends AbstractC15481a {

            /* renamed from: a */
            public final Question.Binary f43898a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15482a(Question.Binary binary) {
                super(null);
                l.e(binary, "question");
                this.f43898a = binary;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C15482a) && l.a(this.f43898a, ((C15482a) obj).f43898a);
                }
                return true;
            }

            public int hashCode() {
                Question.Binary binary = this.f43898a;
                return binary != null ? binary.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("BooleanChoiceQuestion(question=");
                m8728C.append(this.f43898a);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.j.e.d$a$b */
        /* loaded from: classes14-dex2jar.jar:e/a/j/e/d$a$b.class */
        public static final class C15483b extends AbstractC15481a {

            /* renamed from: a */
            public final Question.FreeText f43899a;

            /* renamed from: b */
            public final boolean f43900b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15483b(Question.FreeText freeText, boolean z) {
                super(null);
                l.e(freeText, "question");
                this.f43899a = freeText;
                this.f43900b = z;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C15483b)) {
                        return false;
                    }
                    C15483b c15483b = (C15483b) obj;
                    return l.a(this.f43899a, c15483b.f43899a) && this.f43900b == c15483b.f43900b;
                }
                return true;
            }

            public int hashCode() {
                Question.FreeText freeText = this.f43899a;
                int hashCode = freeText != null ? freeText.hashCode() : 0;
                boolean z = this.f43900b;
                int i = z ? 1 : 0;
                if (z) {
                    i = 1;
                }
                return (hashCode * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("FreeTextQuestion(question=");
                m8728C.append(this.f43899a);
                m8728C.append(", showNameSuggestion=");
                return C22128a.m8590o(m8728C, this.f43900b, ")");
            }
        }

        /* renamed from: e.a.j.e.d$a$c */
        /* loaded from: classes14-dex2jar.jar:e/a/j/e/d$a$c.class */
        public static final class C15484c extends AbstractC15481a {

            /* renamed from: a */
            public static final C15484c f43901a = new C15484c();

            public C15484c() {
                super(null);
            }
        }

        /* renamed from: e.a.j.e.d$a$d */
        /* loaded from: classes14-dex2jar.jar:e/a/j/e/d$a$d.class */
        public static final class C15485d extends AbstractC15481a {

            /* renamed from: a */
            public final Question.SingleChoice f43902a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15485d(Question.SingleChoice singleChoice) {
                super(null);
                l.e(singleChoice, "question");
                this.f43902a = singleChoice;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C15485d) && l.a(this.f43902a, ((C15485d) obj).f43902a);
                }
                return true;
            }

            public int hashCode() {
                Question.SingleChoice singleChoice = this.f43902a;
                return singleChoice != null ? singleChoice.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("SingleChoiceQuestion(question=");
                m8728C.append(this.f43902a);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.j.e.d$a$e */
        /* loaded from: classes14-dex2jar.jar:e/a/j/e/d$a$e.class */
        public static final class C15486e extends AbstractC15481a {

            /* renamed from: a */
            public static final C15486e f43903a = new C15486e();

            public C15486e() {
                super(null);
            }
        }

        public AbstractC15481a() {
        }

        public AbstractC15481a(f fVar) {
        }
    }

    @Inject
    public C15480d(AbstractC15476a abstractC15476a, AbstractC19854f<AbstractC14535n> abstractC19854f) {
        l.e(abstractC15476a, "surveyCoordinator");
        l.e(abstractC19854f, "tagDataSaver");
        this.f43896c = abstractC15476a;
        this.f43897d = abstractC19854f;
        a1<AbstractC15481a> a = k1.a((Object) null);
        this.f43894a = a;
        this.f43895b = d.E(a);
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15479c
    /* renamed from: a */
    public void mo18775a(String str, SuggestionType suggestionType) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(suggestionType, "type");
        Contact mo18781b = this.f43896c.mo18781b();
        if (mo18781b != null) {
            this.f43897d.mo11854a().mo20028a(mo18781b, str, suggestionType.getValue()).mo11828g();
        } else {
            AssertionUtil.reportWeirdnessButNeverCrash("Survey invalid state, question can't be handled");
        }
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15479c
    /* renamed from: b */
    public void mo18774b() {
        this.f43894a.setValue(AbstractC15481a.C15486e.f43903a);
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15479c
    /* renamed from: c */
    public void mo18773c(Answer answer) {
        l.e(answer, "answer");
        this.f43896c.mo18779d(answer);
        this.f43896c.mo18782a();
        m18772d();
    }

    /* renamed from: d */
    public final void m18772d() {
        AbstractC15481a abstractC15481a = AbstractC15481a.C15484c.f43901a;
        a1<AbstractC15481a> a1Var = this.f43894a;
        AbstractC15489f state = this.f43896c.getState();
        if (state instanceof AbstractC15489f.C15490a) {
            AbstractC15489f.C15490a c15490a = (AbstractC15489f.C15490a) state;
            Question question = c15490a.f43906a;
            if (question instanceof Question.SingleChoice) {
                abstractC15481a = new AbstractC15481a.C15485d((Question.SingleChoice) question);
            } else if (question instanceof Question.Binary) {
                abstractC15481a = new AbstractC15481a.C15482a((Question.Binary) question);
            } else if (question instanceof Question.FreeText) {
                abstractC15481a = new AbstractC15481a.C15483b((Question.FreeText) question, c15490a.f43907b instanceof SurveyFlow.NameSuggestion);
            }
        } else if (!l.a(state, AbstractC15489f.C15492c.f43910a)) {
            if (!l.a(state, AbstractC15489f.C15491b.f43909a)) {
                throw new i();
            }
            abstractC15481a = AbstractC15481a.C15486e.f43903a;
        }
        a1Var.setValue(abstractC15481a);
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15479c
    public i1<AbstractC15481a> getState() {
        return this.f43895b;
    }

    @Override // p193e.p194a.p918j.p934e.AbstractC15479c
    public void start() {
        m18772d();
    }
}
