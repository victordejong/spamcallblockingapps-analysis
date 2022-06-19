package p193e.p194a.p619d.p663x.p665r;

import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.manager.rtm.RtmChannelAttributeState;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.x.r.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/j.class */
public final class C12263j {

    /* renamed from: a */
    public final String f35826a;

    /* renamed from: b */
    public final RtmChannelAttributeState f35827b;

    public C12263j(String str, RtmChannelAttributeState rtmChannelAttributeState) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(rtmChannelAttributeState, "state");
        this.f35826a = str;
        this.f35827b = rtmChannelAttributeState;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12263j)) {
                return false;
            }
            C12263j c12263j = (C12263j) obj;
            return l.a(this.f35826a, c12263j.f35826a) && l.a(this.f35827b, c12263j.f35827b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f35826a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        RtmChannelAttributeState rtmChannelAttributeState = this.f35827b;
        if (rtmChannelAttributeState != null) {
            i = rtmChannelAttributeState.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RtmChannelAttributeRequest(key=");
        m8728C.append(this.f35826a);
        m8728C.append(", state=");
        m8728C.append(this.f35827b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
