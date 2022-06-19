package p193e.p194a.p619d.p637c0;

import com.truecaller.voip.util.VoipEventType;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.v0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/v0.class */
public final class C11502v0 {

    /* renamed from: a */
    public final List<C11513x0> f33768a;

    /* renamed from: b */
    public final VoipEventType f33769b;

    /* renamed from: c */
    public final long f33770c;

    /* renamed from: d */
    public final Long f33771d;

    /* renamed from: e */
    public final String f33772e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public C11502v0(List list, VoipEventType voipEventType, long j, Long l, String str, int i) {
        ?? r7 = (i & 4) != 0 ? 0 : j;
        str = (i & 16) != 0 ? null : str;
        l.e(list, "historyPeers");
        l.e(voipEventType, "type");
        this.f33768a = list;
        this.f33769b = voipEventType;
        this.f33770c = r7;
        this.f33771d = null;
        this.f33772e = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11502v0)) {
                return false;
            }
            C11502v0 c11502v0 = (C11502v0) obj;
            return l.a(this.f33768a, c11502v0.f33768a) && l.a(this.f33769b, c11502v0.f33769b) && this.f33770c == c11502v0.f33770c && l.a(this.f33771d, c11502v0.f33771d) && l.a(this.f33772e, c11502v0.f33772e);
        }
        return true;
    }

    public int hashCode() {
        List<C11513x0> list = this.f33768a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        VoipEventType voipEventType = this.f33769b;
        int hashCode2 = voipEventType != null ? voipEventType.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f33770c);
        Long l = this.f33771d;
        int hashCode3 = l != null ? l.hashCode() : 0;
        String str = this.f33772e;
        if (str != null) {
            i = str.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipGroupHistoryEvent(historyPeers=");
        m8728C.append(this.f33768a);
        m8728C.append(", type=");
        m8728C.append(this.f33769b);
        m8728C.append(", duration=");
        m8728C.append(this.f33770c);
        m8728C.append(", timestamp=");
        m8728C.append(this.f33771d);
        m8728C.append(", inviteSenderNumber=");
        return C22128a.m8618h(m8728C, this.f33772e, ")");
    }
}
