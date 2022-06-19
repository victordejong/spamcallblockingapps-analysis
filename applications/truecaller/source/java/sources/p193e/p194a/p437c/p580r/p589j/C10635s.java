package p193e.p194a.p437c.p580r.p589j;

import com.truecaller.insights.models.smartcards.FeedbackGivenState;
import com.truecaller.insights.repository.filters.InfoCardType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/s.class */
public final class C10635s implements AbstractC10605i {

    /* renamed from: a */
    public final AbstractC10616p f31673a;

    /* renamed from: b */
    public final C10613n f31674b;

    /* renamed from: c */
    public final AbstractC10567a f31675c;

    /* renamed from: d */
    public final AbstractC10597h f31676d;

    /* renamed from: e */
    public final C10626q f31677e;

    /* renamed from: f */
    public final AbstractC10627r f31678f;

    /* renamed from: g */
    public C10614o f31679g;

    /* renamed from: h */
    public final C10329b f31680h;

    /* renamed from: i */
    public final InfoCardType f31681i;

    /* renamed from: j */
    public FeedbackGivenState f31682j;

    /* renamed from: k */
    public final boolean f31683k;

    public C10635s(AbstractC10616p abstractC10616p, C10613n c10613n, AbstractC10567a abstractC10567a, AbstractC10597h abstractC10597h, C10626q c10626q, AbstractC10627r abstractC10627r, C10614o c10614o, C10329b c10329b, InfoCardType infoCardType, FeedbackGivenState feedbackGivenState, boolean z, int i) {
        FeedbackGivenState feedbackGivenState2 = null;
        c10613n = (i & 2) != 0 ? null : c10613n;
        abstractC10567a = (i & 4) != 0 ? null : abstractC10567a;
        abstractC10627r = (i & 32) != 0 ? null : abstractC10627r;
        C10614o c10614o2 = (i & 64) != 0 ? C10614o.f31651b : null;
        c10329b = (i & 128) != 0 ? null : c10329b;
        infoCardType = (i & 256) != 0 ? InfoCardType.INFOCARD : infoCardType;
        feedbackGivenState2 = (i & 512) != 0 ? FeedbackGivenState.NOT_GIVEN : feedbackGivenState2;
        z = (i & 1024) != 0 ? false : z;
        l.e(abstractC10616p, "category");
        l.e(c10626q, "infoCardMetadata");
        l.e(c10614o2, "infoCardActionState");
        l.e(infoCardType, "infoCardType");
        l.e(feedbackGivenState2, "feedbackGiven");
        this.f31673a = abstractC10616p;
        this.f31674b = c10613n;
        this.f31675c = abstractC10567a;
        this.f31676d = abstractC10597h;
        this.f31677e = c10626q;
        this.f31678f = abstractC10627r;
        this.f31679g = c10614o2;
        this.f31680h = c10329b;
        this.f31681i = infoCardType;
        this.f31682j = feedbackGivenState2;
        this.f31683k = z;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10605i
    /* renamed from: a */
    public boolean mo25765a() {
        return this.f31683k;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10605i
    /* renamed from: b */
    public AbstractC10597h mo25764b() {
        return this.f31676d;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10605i
    /* renamed from: c */
    public C10329b mo25763c() {
        return this.f31680h;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10635s)) {
                return false;
            }
            C10635s c10635s = (C10635s) obj;
            return l.a(this.f31673a, c10635s.f31673a) && l.a(this.f31674b, c10635s.f31674b) && l.a(this.f31675c, c10635s.f31675c) && l.a(this.f31676d, c10635s.f31676d) && l.a(this.f31677e, c10635s.f31677e) && l.a(this.f31678f, c10635s.f31678f) && l.a(this.f31679g, c10635s.f31679g) && l.a(this.f31680h, c10635s.f31680h) && l.a(this.f31681i, c10635s.f31681i) && l.a(this.f31682j, c10635s.f31682j) && this.f31683k == c10635s.f31683k;
        }
        return true;
    }

    public int hashCode() {
        AbstractC10616p abstractC10616p = this.f31673a;
        int i = 0;
        int hashCode = abstractC10616p != null ? abstractC10616p.hashCode() : 0;
        C10613n c10613n = this.f31674b;
        int hashCode2 = c10613n != null ? c10613n.hashCode() : 0;
        AbstractC10567a abstractC10567a = this.f31675c;
        int hashCode3 = abstractC10567a != null ? abstractC10567a.hashCode() : 0;
        AbstractC10597h abstractC10597h = this.f31676d;
        int hashCode4 = abstractC10597h != null ? abstractC10597h.hashCode() : 0;
        C10626q c10626q = this.f31677e;
        int hashCode5 = c10626q != null ? c10626q.hashCode() : 0;
        AbstractC10627r abstractC10627r = this.f31678f;
        int hashCode6 = abstractC10627r != null ? abstractC10627r.hashCode() : 0;
        C10614o c10614o = this.f31679g;
        int hashCode7 = c10614o != null ? c10614o.hashCode() : 0;
        C10329b c10329b = this.f31680h;
        int hashCode8 = c10329b != null ? c10329b.hashCode() : 0;
        InfoCardType infoCardType = this.f31681i;
        int hashCode9 = infoCardType != null ? infoCardType.hashCode() : 0;
        FeedbackGivenState feedbackGivenState = this.f31682j;
        if (feedbackGivenState != null) {
            i = feedbackGivenState.hashCode();
        }
        boolean z = this.f31683k;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InfoCardWithAction(category=");
        m8728C.append(this.f31673a);
        m8728C.append(", infoCard=");
        m8728C.append(this.f31674b);
        m8728C.append(", actionData=");
        m8728C.append(this.f31675c);
        m8728C.append(", feedbackActionInfo=");
        m8728C.append(this.f31676d);
        m8728C.append(", infoCardMetadata=");
        m8728C.append(this.f31677e);
        m8728C.append(", subCategory=");
        m8728C.append(this.f31678f);
        m8728C.append(", infoCardActionState=");
        m8728C.append(this.f31679g);
        m8728C.append(", feedback=");
        m8728C.append(this.f31680h);
        m8728C.append(", infoCardType=");
        m8728C.append(this.f31681i);
        m8728C.append(", feedbackGiven=");
        m8728C.append(this.f31682j);
        m8728C.append(", isIM=");
        return C22128a.m8590o(m8728C, this.f31683k, ")");
    }
}
