package p193e.p194a.p437c.p579q;

import com.razorpay.AnalyticsConstants;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import s1.z.c.l;
/* renamed from: e.a.c.q.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/q/g.class */
public final class C10510g {

    /* renamed from: a */
    public final long f31249a;

    /* renamed from: b */
    public final String f31250b;

    /* renamed from: c */
    public final long f31251c;

    /* renamed from: d */
    public final String f31252d;

    /* renamed from: e */
    public final long f31253e;

    /* renamed from: f */
    public final List<AbstractC10567a> f31254f;

    /* JADX WARN: Multi-variable type inference failed */
    public C10510g(long j, String str, long j2, String str2, long j3, List<? extends AbstractC10567a> list) {
        l.e(str, "address");
        l.e(str2, AnalyticsConstants.OTP);
        l.e(list, "actions");
        this.f31249a = j;
        this.f31250b = str;
        this.f31251c = j2;
        this.f31252d = str2;
        this.f31253e = j3;
        this.f31254f = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10510g)) {
                return false;
            }
            C10510g c10510g = (C10510g) obj;
            return this.f31249a == c10510g.f31249a && l.a(this.f31250b, c10510g.f31250b) && this.f31251c == c10510g.f31251c && l.a(this.f31252d, c10510g.f31252d) && this.f31253e == c10510g.f31253e && l.a(this.f31254f, c10510g.f31254f);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f31249a);
        String str = this.f31250b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.f31251c);
        String str2 = this.f31252d;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a3 = C4876d.m34274a(this.f31253e);
        List<AbstractC10567a> list = this.f31254f;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((((m34274a * 31) + hashCode) * 31) + m34274a2) * 31) + hashCode2) * 31) + m34274a3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OtpData(conversationId=");
        m8728C.append(this.f31249a);
        m8728C.append(", address=");
        m8728C.append(this.f31250b);
        m8728C.append(", messageId=");
        m8728C.append(this.f31251c);
        m8728C.append(", otp=");
        m8728C.append(this.f31252d);
        m8728C.append(", autoDismissTime=");
        m8728C.append(this.f31253e);
        m8728C.append(", actions=");
        return C22128a.m8602l(m8728C, this.f31254f, ")");
    }
}
