package p193e.p194a.p437c.p523a0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.source.SmartSMSFeatureStatus;
import com.truecaller.insights.source.SourceType;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a0.b0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/b0.class */
public final class C9615b0 {

    /* renamed from: a */
    public final String f29059a;

    /* renamed from: b */
    public final String f29060b;

    /* renamed from: c */
    public final String f29061c;

    /* renamed from: d */
    public final SmartSMSFeatureStatus f29062d;

    /* renamed from: e */
    public final List<String> f29063e;

    /* renamed from: f */
    public final SourceType f29064f;

    /* renamed from: g */
    public final String f29065g;

    public C9615b0(String str, String str2, String str3, SmartSMSFeatureStatus smartSMSFeatureStatus, List<String> list, SourceType sourceType, String str4) {
        l.e(str, AnalyticsConstants.SENDER);
        l.e(list, "enabledGrammars");
        l.e(sourceType, "sourceType");
        this.f29059a = str;
        this.f29060b = str2;
        this.f29061c = str3;
        this.f29062d = smartSMSFeatureStatus;
        this.f29063e = list;
        this.f29064f = sourceType;
        this.f29065g = str4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9615b0)) {
                return false;
            }
            C9615b0 c9615b0 = (C9615b0) obj;
            return l.a(this.f29059a, c9615b0.f29059a) && l.a(this.f29060b, c9615b0.f29060b) && l.a(this.f29061c, c9615b0.f29061c) && l.a(this.f29062d, c9615b0.f29062d) && l.a(this.f29063e, c9615b0.f29063e) && l.a(this.f29064f, c9615b0.f29064f) && l.a(this.f29065g, c9615b0.f29065g);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f29059a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f29060b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f29061c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        SmartSMSFeatureStatus smartSMSFeatureStatus = this.f29062d;
        int hashCode4 = smartSMSFeatureStatus != null ? smartSMSFeatureStatus.hashCode() : 0;
        List<String> list = this.f29063e;
        int hashCode5 = list != null ? list.hashCode() : 0;
        SourceType sourceType = this.f29064f;
        int hashCode6 = sourceType != null ? sourceType.hashCode() : 0;
        String str4 = this.f29065g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderInfoModel(sender=");
        m8728C.append(this.f29059a);
        m8728C.append(", senderName=");
        m8728C.append(this.f29060b);
        m8728C.append(", senderType=");
        m8728C.append(this.f29061c);
        m8728C.append(", smartFeatureStatus=");
        m8728C.append(this.f29062d);
        m8728C.append(", enabledGrammars=");
        m8728C.append(this.f29063e);
        m8728C.append(", sourceType=");
        m8728C.append(this.f29064f);
        m8728C.append(", countryCode=");
        return C22128a.m8618h(m8728C, this.f29065g, ")");
    }
}
