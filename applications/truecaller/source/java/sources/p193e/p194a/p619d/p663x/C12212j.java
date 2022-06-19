package p193e.p194a.p619d.p663x;

import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.x.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/j.class */
public final class C12212j {

    /* renamed from: a */
    public final String f35673a;

    /* renamed from: b */
    public final int f35674b;

    public C12212j(String str, int i) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        this.f35673a = str;
        this.f35674b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12212j)) {
                return false;
            }
            C12212j c12212j = (C12212j) obj;
            return l.a(this.f35673a, c12212j.f35673a) && this.f35674b == c12212j.f35674b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f35673a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f35674b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("JoinedChannel(channelId=");
        m8728C.append(this.f35673a);
        m8728C.append(", uid=");
        return C22128a.m8697J2(m8728C, this.f35674b, ")");
    }
}
