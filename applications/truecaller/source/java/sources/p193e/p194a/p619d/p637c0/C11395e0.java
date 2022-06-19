package p193e.p194a.p619d.p637c0;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/e0.class */
public final class C11395e0 {

    /* renamed from: a */
    public final VoipAnalyticsCallDirection f33459a;

    /* renamed from: b */
    public final String f33460b;

    /* renamed from: c */
    public final String f33461c;

    /* renamed from: d */
    public final Integer f33462d;

    /* renamed from: e */
    public final String f33463e;

    /* renamed from: f */
    public final Integer f33464f;

    /* renamed from: g */
    public final String f33465g;

    /* renamed from: h */
    public final boolean f33466h;

    public C11395e0(VoipAnalyticsCallDirection voipAnalyticsCallDirection, String str, String str2, Integer num, String str3, Integer num2, String str4, boolean z, int i) {
        str = (i & 2) != 0 ? null : str;
        str2 = (i & 4) != 0 ? null : str2;
        num = (i & 8) != 0 ? null : num;
        str3 = (i & 16) != 0 ? null : str3;
        num2 = (i & 32) != 0 ? null : num2;
        str4 = (i & 64) != 0 ? null : str4;
        z = (i & 128) != 0 ? false : z;
        l.e(voipAnalyticsCallDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        this.f33459a = voipAnalyticsCallDirection;
        this.f33460b = str;
        this.f33461c = str2;
        this.f33462d = num;
        this.f33463e = str3;
        this.f33464f = num2;
        this.f33465g = str4;
        this.f33466h = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11395e0)) {
                return false;
            }
            C11395e0 c11395e0 = (C11395e0) obj;
            return l.a(this.f33459a, c11395e0.f33459a) && l.a(this.f33460b, c11395e0.f33460b) && l.a(this.f33461c, c11395e0.f33461c) && l.a(this.f33462d, c11395e0.f33462d) && l.a(this.f33463e, c11395e0.f33463e) && l.a(this.f33464f, c11395e0.f33464f) && l.a(this.f33465g, c11395e0.f33465g) && this.f33466h == c11395e0.f33466h;
        }
        return true;
    }

    public int hashCode() {
        VoipAnalyticsCallDirection voipAnalyticsCallDirection = this.f33459a;
        int i = 0;
        int hashCode = voipAnalyticsCallDirection != null ? voipAnalyticsCallDirection.hashCode() : 0;
        String str = this.f33460b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f33461c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        Integer num = this.f33462d;
        int hashCode4 = num != null ? num.hashCode() : 0;
        String str3 = this.f33463e;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        Integer num2 = this.f33464f;
        int hashCode6 = num2 != null ? num2.hashCode() : 0;
        String str4 = this.f33465g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        boolean z = this.f33466h;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipAnalyticsCallInfo(direction=");
        m8728C.append(this.f33459a);
        m8728C.append(", channelId=");
        m8728C.append(this.f33460b);
        m8728C.append(", voipId=");
        m8728C.append(this.f33461c);
        m8728C.append(", rtcUid=");
        m8728C.append(this.f33462d);
        m8728C.append(", peerVoipId=");
        m8728C.append(this.f33463e);
        m8728C.append(", peerRtcUid=");
        m8728C.append(this.f33464f);
        m8728C.append(", peerCrossDcIsoCode=");
        m8728C.append(this.f33465g);
        m8728C.append(", isGroup=");
        return C22128a.m8590o(m8728C, this.f33466h, ")");
    }
}
