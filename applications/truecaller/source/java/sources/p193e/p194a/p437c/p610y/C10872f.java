package p193e.p194a.p437c.p610y;

import com.truecaller.insights.models.smartcards.FeedbackGivenState;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.y.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/f.class */
public final class C10872f {

    /* renamed from: a */
    public final long f32282a;

    /* renamed from: b */
    public final long f32283b;

    /* renamed from: c */
    public final C10888l f32284c;

    /* renamed from: d */
    public final boolean f32285d;

    /* renamed from: e */
    public final AbstractC10597h f32286e;

    /* renamed from: f */
    public final C10329b f32287f;

    /* renamed from: g */
    public final b f32288g;

    /* renamed from: h */
    public final AbstractC10616p f32289h;

    /* renamed from: i */
    public FeedbackGivenState f32290i;

    public C10872f(long j, long j2, C10888l c10888l, boolean z, AbstractC10597h abstractC10597h, C10329b c10329b, b bVar, AbstractC10616p abstractC10616p, FeedbackGivenState feedbackGivenState) {
        l.e(c10888l, "smartCardUiModel");
        l.e(bVar, "messageDateTime");
        l.e(abstractC10616p, "infoCardCategory");
        l.e(feedbackGivenState, "feedbackGiven");
        this.f32282a = j;
        this.f32283b = j2;
        this.f32284c = c10888l;
        this.f32285d = z;
        this.f32286e = abstractC10597h;
        this.f32287f = c10329b;
        this.f32288g = bVar;
        this.f32289h = abstractC10616p;
        this.f32290i = feedbackGivenState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* renamed from: a */
    public static C10872f m25535a(C10872f c10872f, long j, long j2, C10888l c10888l, boolean z, AbstractC10597h abstractC10597h, C10329b c10329b, b bVar, AbstractC10616p abstractC10616p, FeedbackGivenState feedbackGivenState, int i) {
        ?? r15 = j;
        if ((i & 1) != 0) {
            r15 = c10872f.f32282a;
        }
        ?? r17 = j2;
        if ((i & 2) != 0) {
            r17 = c10872f.f32283b;
        }
        if ((i & 4) != 0) {
            c10888l = c10872f.f32284c;
        }
        if ((i & 8) != 0) {
            z = c10872f.f32285d;
        }
        FeedbackGivenState feedbackGivenState2 = null;
        AbstractC10597h abstractC10597h2 = (i & 16) != 0 ? c10872f.f32286e : null;
        C10329b c10329b2 = (i & 32) != 0 ? c10872f.f32287f : null;
        b bVar2 = (i & 64) != 0 ? c10872f.f32288g : null;
        AbstractC10616p abstractC10616p2 = (i & 128) != 0 ? c10872f.f32289h : null;
        if ((i & 256) != 0) {
            feedbackGivenState2 = c10872f.f32290i;
        }
        l.e(c10888l, "smartCardUiModel");
        l.e(bVar2, "messageDateTime");
        l.e(abstractC10616p2, "infoCardCategory");
        l.e(feedbackGivenState2, "feedbackGiven");
        return new C10872f(r15, r17, c10888l, z, abstractC10597h2, c10329b2, bVar2, abstractC10616p2, feedbackGivenState2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10872f)) {
                return false;
            }
            C10872f c10872f = (C10872f) obj;
            return this.f32282a == c10872f.f32282a && this.f32283b == c10872f.f32283b && l.a(this.f32284c, c10872f.f32284c) && this.f32285d == c10872f.f32285d && l.a(this.f32286e, c10872f.f32286e) && l.a(this.f32287f, c10872f.f32287f) && l.a(this.f32288g, c10872f.f32288g) && l.a(this.f32289h, c10872f.f32289h) && l.a(this.f32290i, c10872f.f32290i);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f32282a);
        int m34274a2 = C4876d.m34274a(this.f32283b);
        C10888l c10888l = this.f32284c;
        int i = 0;
        int hashCode = c10888l != null ? c10888l.hashCode() : 0;
        boolean z = this.f32285d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        AbstractC10597h abstractC10597h = this.f32286e;
        int hashCode2 = abstractC10597h != null ? abstractC10597h.hashCode() : 0;
        C10329b c10329b = this.f32287f;
        int hashCode3 = c10329b != null ? c10329b.hashCode() : 0;
        b bVar = this.f32288g;
        int hashCode4 = bVar != null ? bVar.hashCode() : 0;
        AbstractC10616p abstractC10616p = this.f32289h;
        int hashCode5 = abstractC10616p != null ? abstractC10616p.hashCode() : 0;
        FeedbackGivenState feedbackGivenState = this.f32290i;
        if (feedbackGivenState != null) {
            i = feedbackGivenState.hashCode();
        }
        return (((((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InfoCardUiModel(messageId=");
        m8728C.append(this.f32282a);
        m8728C.append(", conversationId=");
        m8728C.append(this.f32283b);
        m8728C.append(", smartCardUiModel=");
        m8728C.append(this.f32284c);
        m8728C.append(", isCollapsible=");
        m8728C.append(this.f32285d);
        m8728C.append(", feedbackActionInfo=");
        m8728C.append(this.f32286e);
        m8728C.append(", feedback=");
        m8728C.append(this.f32287f);
        m8728C.append(", messageDateTime=");
        m8728C.append(this.f32288g);
        m8728C.append(", infoCardCategory=");
        m8728C.append(this.f32289h);
        m8728C.append(", feedbackGiven=");
        m8728C.append(this.f32290i);
        m8728C.append(")");
        return m8728C.toString();
    }
}
