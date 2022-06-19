package p193e.p194a.p437c.p552i.p557e;

import com.truecaller.insights.models.feedback.FeedbackType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p525b0.C9712c;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.i.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/e/b.class */
public final class C10329b {

    /* renamed from: a */
    public final String f30679a;

    /* renamed from: b */
    public final String f30680b;

    /* renamed from: c */
    public final b f30681c;

    /* renamed from: d */
    public final String f30682d;

    /* renamed from: e */
    public final String f30683e;

    /* renamed from: f */
    public final String f30684f;

    /* renamed from: g */
    public final FeedbackType f30685g;

    /* renamed from: h */
    public final C9712c f30686h;

    /* renamed from: i */
    public final boolean f30687i;

    public C10329b(String str, String str2, b bVar, String str3, String str4, String str5, FeedbackType feedbackType, C9712c c9712c, boolean z) {
        l.e(str2, "message");
        l.e(bVar, "datetime");
        l.e(str5, "userFeedback");
        l.e(feedbackType, "feedbackType");
        this.f30679a = str;
        this.f30680b = str2;
        this.f30681c = bVar;
        this.f30682d = str3;
        this.f30683e = str4;
        this.f30684f = str5;
        this.f30685g = feedbackType;
        this.f30686h = c9712c;
        this.f30687i = z;
    }

    public /* synthetic */ C10329b(String str, String str2, b bVar, String str3, String str4, String str5, FeedbackType feedbackType, C9712c c9712c, boolean z, int i) {
        this(str, str2, bVar, str3, str4, str5, (i & 64) != 0 ? FeedbackType.CATEGORIZER_FEEDBACK : feedbackType, null, (i & 256) != 0 ? false : z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10329b)) {
                return false;
            }
            C10329b c10329b = (C10329b) obj;
            return l.a(this.f30679a, c10329b.f30679a) && l.a(this.f30680b, c10329b.f30680b) && l.a(this.f30681c, c10329b.f30681c) && l.a(this.f30682d, c10329b.f30682d) && l.a(this.f30683e, c10329b.f30683e) && l.a(this.f30684f, c10329b.f30684f) && l.a(this.f30685g, c10329b.f30685g) && l.a(this.f30686h, c10329b.f30686h) && this.f30687i == c10329b.f30687i;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f30679a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30680b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        b bVar = this.f30681c;
        int hashCode3 = bVar != null ? bVar.hashCode() : 0;
        String str3 = this.f30682d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f30683e;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f30684f;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        FeedbackType feedbackType = this.f30685g;
        int hashCode7 = feedbackType != null ? feedbackType.hashCode() : 0;
        C9712c c9712c = this.f30686h;
        if (c9712c != null) {
            i = c9712c.hashCode();
        }
        boolean z = this.f30687i;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InsightsFeedback(address=");
        m8728C.append(this.f30679a);
        m8728C.append(", message=");
        m8728C.append(this.f30680b);
        m8728C.append(", datetime=");
        m8728C.append(this.f30681c);
        m8728C.append(", categorizerOutput=");
        m8728C.append(this.f30682d);
        m8728C.append(", parserOutput=");
        m8728C.append(this.f30683e);
        m8728C.append(", userFeedback=");
        m8728C.append(this.f30684f);
        m8728C.append(", feedbackType=");
        m8728C.append(this.f30685g);
        m8728C.append(", updatesProcessorMeta=");
        m8728C.append(this.f30686h);
        m8728C.append(", isIM=");
        return C22128a.m8590o(m8728C, this.f30687i, ")");
    }
}
