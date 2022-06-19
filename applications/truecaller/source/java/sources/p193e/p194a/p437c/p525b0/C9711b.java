package p193e.p194a.p437c.p525b0;

import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.smartcards.FeedbackGivenState;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p589j.AbstractC10605i;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.z.c.l;
/* renamed from: e.a.c.b0.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/b0/b.class */
public final class C9711b implements AbstractC10605i {

    /* renamed from: a */
    public final AbstractC10651b f29339a;

    /* renamed from: b */
    public final AbstractC10597h f29340b;

    /* renamed from: c */
    public FeedbackGivenState f29341c;

    /* renamed from: d */
    public final C10329b f29342d;

    /* renamed from: e */
    public final ClassifierType f29343e;

    /* renamed from: f */
    public final boolean f29344f;

    public C9711b(AbstractC10651b abstractC10651b, AbstractC10597h abstractC10597h, FeedbackGivenState feedbackGivenState, C10329b c10329b, ClassifierType classifierType, boolean z, int i) {
        FeedbackGivenState feedbackGivenState2 = (i & 4) != 0 ? FeedbackGivenState.NOT_GIVEN : null;
        c10329b = (i & 8) != 0 ? null : c10329b;
        l.e(abstractC10651b, "updateCategory");
        l.e(feedbackGivenState2, "feedbackGiven");
        l.e(classifierType, "classifierType");
        this.f29339a = abstractC10651b;
        this.f29340b = abstractC10597h;
        this.f29341c = feedbackGivenState2;
        this.f29342d = c10329b;
        this.f29343e = classifierType;
        this.f29344f = z;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10605i
    /* renamed from: a */
    public boolean mo25765a() {
        return this.f29344f;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10605i
    /* renamed from: b */
    public AbstractC10597h mo25764b() {
        return this.f29340b;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10605i
    /* renamed from: c */
    public C10329b mo25763c() {
        return this.f29342d;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9711b)) {
                return false;
            }
            C9711b c9711b = (C9711b) obj;
            return l.a(this.f29339a, c9711b.f29339a) && l.a(this.f29340b, c9711b.f29340b) && l.a(this.f29341c, c9711b.f29341c) && l.a(this.f29342d, c9711b.f29342d) && l.a(this.f29343e, c9711b.f29343e) && this.f29344f == c9711b.f29344f;
        }
        return true;
    }

    public int hashCode() {
        AbstractC10651b abstractC10651b = this.f29339a;
        int i = 0;
        int hashCode = abstractC10651b != null ? abstractC10651b.hashCode() : 0;
        AbstractC10597h abstractC10597h = this.f29340b;
        int hashCode2 = abstractC10597h != null ? abstractC10597h.hashCode() : 0;
        FeedbackGivenState feedbackGivenState = this.f29341c;
        int hashCode3 = feedbackGivenState != null ? feedbackGivenState.hashCode() : 0;
        C10329b c10329b = this.f29342d;
        int hashCode4 = c10329b != null ? c10329b.hashCode() : 0;
        ClassifierType classifierType = this.f29343e;
        if (classifierType != null) {
            i = classifierType.hashCode();
        }
        boolean z = this.f29344f;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UpdateCategoryWithFeedback(updateCategory=");
        m8728C.append(this.f29339a);
        m8728C.append(", feedbackActionInfo=");
        m8728C.append(this.f29340b);
        m8728C.append(", feedbackGiven=");
        m8728C.append(this.f29341c);
        m8728C.append(", feedback=");
        m8728C.append(this.f29342d);
        m8728C.append(", classifierType=");
        m8728C.append(this.f29343e);
        m8728C.append(", isIM=");
        return C22128a.m8590o(m8728C, this.f29344f, ")");
    }
}
