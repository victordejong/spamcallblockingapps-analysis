package p193e.p194a.p437c.p580r.p588i;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.source.SmartSMSFeatureStatus;
import com.truecaller.insights.source.SourceType;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.i.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/i/a.class */
public final class C10566a {

    /* renamed from: a */
    public final long f31493a;

    /* renamed from: b */
    public final String f31494b;

    /* renamed from: c */
    public final String f31495c;

    /* renamed from: d */
    public final String f31496d;

    /* renamed from: e */
    public final SmartSMSFeatureStatus f31497e;

    /* renamed from: f */
    public final List<String> f31498f;

    /* renamed from: g */
    public final SourceType f31499g;

    /* renamed from: h */
    public final String f31500h;

    public C10566a(long j, String str, String str2, String str3, SmartSMSFeatureStatus smartSMSFeatureStatus, List<String> list, SourceType sourceType, String str4) {
        l.e(str, AnalyticsConstants.SENDER);
        l.e(list, "enabledGrammars");
        l.e(sourceType, "sourceType");
        this.f31493a = j;
        this.f31494b = str;
        this.f31495c = str2;
        this.f31496d = str3;
        this.f31497e = smartSMSFeatureStatus;
        this.f31498f = list;
        this.f31499g = sourceType;
        this.f31500h = str4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* renamed from: a */
    public static C10566a m25782a(C10566a c10566a, long j, String str, String str2, String str3, SmartSMSFeatureStatus smartSMSFeatureStatus, List list, SourceType sourceType, String str4, int i) {
        ?? r13 = j;
        if ((i & 1) != 0) {
            r13 = c10566a.f31493a;
        }
        if ((i & 2) != 0) {
            str = c10566a.f31494b;
        }
        String str5 = null;
        String str6 = (i & 4) != 0 ? c10566a.f31495c : null;
        String str7 = (i & 8) != 0 ? c10566a.f31496d : null;
        SmartSMSFeatureStatus smartSMSFeatureStatus2 = (i & 16) != 0 ? c10566a.f31497e : null;
        List<String> list2 = (i & 32) != 0 ? c10566a.f31498f : null;
        SourceType sourceType2 = (i & 64) != 0 ? c10566a.f31499g : null;
        if ((i & 128) != 0) {
            str5 = c10566a.f31500h;
        }
        l.e(str, AnalyticsConstants.SENDER);
        l.e(list2, "enabledGrammars");
        l.e(sourceType2, "sourceType");
        return new C10566a(r13, str, str6, str7, smartSMSFeatureStatus2, list2, sourceType2, str5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10566a)) {
                return false;
            }
            C10566a c10566a = (C10566a) obj;
            return this.f31493a == c10566a.f31493a && l.a(this.f31494b, c10566a.f31494b) && l.a(this.f31495c, c10566a.f31495c) && l.a(this.f31496d, c10566a.f31496d) && l.a(this.f31497e, c10566a.f31497e) && l.a(this.f31498f, c10566a.f31498f) && l.a(this.f31499g, c10566a.f31499g) && l.a(this.f31500h, c10566a.f31500h);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f31493a);
        String str = this.f31494b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31495c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f31496d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        SmartSMSFeatureStatus smartSMSFeatureStatus = this.f31497e;
        int hashCode4 = smartSMSFeatureStatus != null ? smartSMSFeatureStatus.hashCode() : 0;
        List<String> list = this.f31498f;
        int hashCode5 = list != null ? list.hashCode() : 0;
        SourceType sourceType = this.f31499g;
        int hashCode6 = sourceType != null ? sourceType.hashCode() : 0;
        String str4 = this.f31500h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderInfoEntity(id=");
        m8728C.append(this.f31493a);
        m8728C.append(", sender=");
        m8728C.append(this.f31494b);
        m8728C.append(", senderName=");
        m8728C.append(this.f31495c);
        m8728C.append(", senderType=");
        m8728C.append(this.f31496d);
        m8728C.append(", smartFeatureStatus=");
        m8728C.append(this.f31497e);
        m8728C.append(", enabledGrammars=");
        m8728C.append(this.f31498f);
        m8728C.append(", sourceType=");
        m8728C.append(this.f31499g);
        m8728C.append(", countryCode=");
        return C22128a.m8618h(m8728C, this.f31500h, ")");
    }
}
