package p193e.p194a.p918j.p934e;

import com.razorpay.AnalyticsConstants;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.data.entities.SurveyFlow;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.j.e.f */
/* loaded from: classes14-dex2jar.jar:e/a/j/e/f.class */
public abstract class AbstractC15489f {

    /* renamed from: e.a.j.e.f$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/e/f$a.class */
    public static final class C15490a extends AbstractC15489f {

        /* renamed from: a */
        public final Question f43906a;

        /* renamed from: b */
        public final SurveyFlow f43907b;

        /* renamed from: c */
        public final boolean f43908c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15490a(Question question, SurveyFlow surveyFlow, boolean z) {
            super(null);
            l.e(question, "question");
            l.e(surveyFlow, AnalyticsConstants.FLOW);
            this.f43906a = question;
            this.f43907b = surveyFlow;
            this.f43908c = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15490a)) {
                    return false;
                }
                C15490a c15490a = (C15490a) obj;
                return l.a(this.f43906a, c15490a.f43906a) && l.a(this.f43907b, c15490a.f43907b) && this.f43908c == c15490a.f43908c;
            }
            return true;
        }

        public int hashCode() {
            Question question = this.f43906a;
            int i = 0;
            int hashCode = question != null ? question.hashCode() : 0;
            SurveyFlow surveyFlow = this.f43907b;
            if (surveyFlow != null) {
                i = surveyFlow.hashCode();
            }
            boolean z = this.f43908c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((hashCode * 31) + i) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Active(question=");
            m8728C.append(this.f43906a);
            m8728C.append(", flow=");
            m8728C.append(this.f43907b);
            m8728C.append(", isBottomSheetQuestion=");
            return C22128a.m8590o(m8728C, this.f43908c, ")");
        }
    }

    /* renamed from: e.a.j.e.f$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/e/f$b.class */
    public static final class C15491b extends AbstractC15489f {

        /* renamed from: a */
        public static final C15491b f43909a = new C15491b();

        public C15491b() {
            super(null);
        }
    }

    /* renamed from: e.a.j.e.f$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/e/f$c.class */
    public static final class C15492c extends AbstractC15489f {

        /* renamed from: a */
        public static final C15492c f43910a = new C15492c();

        public C15492c() {
            super(null);
        }
    }

    public AbstractC15489f(f fVar) {
    }
}
