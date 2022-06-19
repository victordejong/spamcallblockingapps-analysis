package p193e.p194a.p619d.p637c0;

import com.truecaller.voip.util.VoipEventType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.w0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/w0.class */
public final class C11508w0 {

    /* renamed from: a */
    public final String f33791a;

    /* renamed from: b */
    public final VoipEventType f33792b;

    /* renamed from: c */
    public final long f33793c;

    /* renamed from: d */
    public final Long f33794d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public C11508w0(String str, VoipEventType voipEventType, long j, Long l, int i) {
        ?? r7 = (i & 4) != 0 ? 0 : j;
        l = (i & 8) != 0 ? null : l;
        l.e(str, "number");
        l.e(voipEventType, "type");
        this.f33791a = str;
        this.f33792b = voipEventType;
        this.f33793c = r7;
        this.f33794d = l;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11508w0)) {
                return false;
            }
            C11508w0 c11508w0 = (C11508w0) obj;
            return l.a(this.f33791a, c11508w0.f33791a) && l.a(this.f33792b, c11508w0.f33792b) && this.f33793c == c11508w0.f33793c && l.a(this.f33794d, c11508w0.f33794d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f33791a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        VoipEventType voipEventType = this.f33792b;
        int hashCode2 = voipEventType != null ? voipEventType.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f33793c);
        Long l = this.f33794d;
        if (l != null) {
            i = l.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipHistoryEvent(number=");
        m8728C.append(this.f33791a);
        m8728C.append(", type=");
        m8728C.append(this.f33792b);
        m8728C.append(", duration=");
        m8728C.append(this.f33793c);
        m8728C.append(", timestamp=");
        m8728C.append(this.f33794d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
