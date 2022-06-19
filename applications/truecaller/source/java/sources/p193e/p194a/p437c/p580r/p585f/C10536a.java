package p193e.p194a.p437c.p580r.p585f;

import com.truecaller.insights.models.feedback.FeedbackType;
import java.util.Date;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.f.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/f/a.class */
public final class C10536a {

    /* renamed from: a */
    public final long f31448a;

    /* renamed from: b */
    public final Date f31449b;

    /* renamed from: c */
    public final FeedbackType f31450c;

    /* renamed from: d */
    public final String f31451d;

    /* renamed from: e */
    public final long f31452e;

    /* renamed from: f */
    public final String f31453f;

    /* renamed from: g */
    public final String f31454g;

    /* renamed from: h */
    public final String f31455h;

    /* renamed from: i */
    public final String f31456i;

    /* renamed from: j */
    public final long f31457j;

    public C10536a(long j, Date date, FeedbackType feedbackType, String str, long j2, String str2, String str3, String str4, String str5, long j3) {
        l.e(date, "createdAt");
        l.e(feedbackType, "feedbackType");
        l.e(str, "feedbackValue");
        l.e(str3, "body");
        this.f31448a = j;
        this.f31449b = date;
        this.f31450c = feedbackType;
        this.f31451d = str;
        this.f31452e = j2;
        this.f31453f = str2;
        this.f31454g = str3;
        this.f31455h = str4;
        this.f31456i = str5;
        this.f31457j = j3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10536a)) {
                return false;
            }
            C10536a c10536a = (C10536a) obj;
            return this.f31448a == c10536a.f31448a && l.a(this.f31449b, c10536a.f31449b) && l.a(this.f31450c, c10536a.f31450c) && l.a(this.f31451d, c10536a.f31451d) && this.f31452e == c10536a.f31452e && l.a(this.f31453f, c10536a.f31453f) && l.a(this.f31454g, c10536a.f31454g) && l.a(this.f31455h, c10536a.f31455h) && l.a(this.f31456i, c10536a.f31456i) && this.f31457j == c10536a.f31457j;
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f31448a);
        Date date = this.f31449b;
        int i = 0;
        int hashCode = date != null ? date.hashCode() : 0;
        FeedbackType feedbackType = this.f31450c;
        int hashCode2 = feedbackType != null ? feedbackType.hashCode() : 0;
        String str = this.f31451d;
        int hashCode3 = str != null ? str.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.f31452e);
        String str2 = this.f31453f;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f31454g;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f31455h;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f31456i;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + m34274a2) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + C4876d.m34274a(this.f31457j);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InsightsFeedbackEntity(id=");
        m8728C.append(this.f31448a);
        m8728C.append(", createdAt=");
        m8728C.append(this.f31449b);
        m8728C.append(", feedbackType=");
        m8728C.append(this.f31450c);
        m8728C.append(", feedbackValue=");
        m8728C.append(this.f31451d);
        m8728C.append(", entityId=");
        m8728C.append(this.f31452e);
        m8728C.append(", sender=");
        m8728C.append(this.f31453f);
        m8728C.append(", body=");
        m8728C.append(this.f31454g);
        m8728C.append(", parserOutput=");
        m8728C.append(this.f31455h);
        m8728C.append(", categorizerOutput=");
        m8728C.append(this.f31456i);
        m8728C.append(", parentId=");
        return C22128a.m8693K2(m8728C, this.f31457j, ")");
    }
}
