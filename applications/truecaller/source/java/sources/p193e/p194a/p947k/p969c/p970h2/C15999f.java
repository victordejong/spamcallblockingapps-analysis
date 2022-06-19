package p193e.p194a.p947k.p969c.p970h2;

import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import com.truecaller.videocallerid.utils.analytics.OnboardingStep;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17694p2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/f.class */
public final class C15999f implements AbstractC19549v {

    /* renamed from: a */
    public final String f45100a;

    /* renamed from: b */
    public final OnboardingContext f45101b;

    /* renamed from: c */
    public final OnboardingStep f45102c;

    public C15999f(String str, OnboardingContext onboardingContext, OnboardingStep onboardingStep) {
        l.e(str, "id");
        l.e(onboardingContext, AnalyticsConstants.CONTEXT);
        l.e(onboardingStep, "step");
        this.f45100a = str;
        this.f45101b = onboardingContext;
        this.f45102c = onboardingStep;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17694p2.f50047f;
        C17694p2.C17696b c17696b = new C17694p2.C17696b(null);
        String str = this.f45100a;
        c17696b.validate(c17696b.fields()[4], str);
        c17696b.f50058c = str;
        c17696b.fieldSetFlags()[4] = true;
        String value = this.f45101b.getValue();
        c17696b.validate(c17696b.fields()[2], value);
        c17696b.f50056a = value;
        c17696b.fieldSetFlags()[2] = true;
        String value2 = this.f45102c.getValue();
        c17696b.validate(c17696b.fields()[3], value2);
        c17696b.f50057b = value2;
        c17696b.fieldSetFlags()[3] = true;
        return new AbstractC19580x.C19584d(c17696b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15999f)) {
                return false;
            }
            C15999f c15999f = (C15999f) obj;
            return l.a(this.f45100a, c15999f.f45100a) && l.a(this.f45101b, c15999f.f45101b) && l.a(this.f45102c, c15999f.f45102c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45100a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        OnboardingContext onboardingContext = this.f45101b;
        int hashCode2 = onboardingContext != null ? onboardingContext.hashCode() : 0;
        OnboardingStep onboardingStep = this.f45102c;
        if (onboardingStep != null) {
            i = onboardingStep.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoCallerIdOnboardingEvent(id=");
        m8728C.append(this.f45100a);
        m8728C.append(", context=");
        m8728C.append(this.f45101b);
        m8728C.append(", step=");
        m8728C.append(this.f45102c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
