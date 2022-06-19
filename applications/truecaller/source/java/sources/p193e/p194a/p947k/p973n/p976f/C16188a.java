package p193e.p194a.p947k.p973n.p976f;

import com.huawei.hms.api.FailedBinderCallBack;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.n.f.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/f/a.class */
public final class C16188a {

    /* renamed from: a */
    public final String f45661a;

    /* renamed from: b */
    public final String f45662b;

    /* renamed from: c */
    public final String f45663c;

    /* renamed from: d */
    public final String f45664d;

    /* renamed from: e */
    public final long f45665e;

    /* renamed from: f */
    public final long f45666f;

    /* renamed from: g */
    public final long f45667g;

    /* renamed from: h */
    public final boolean f45668h;

    public C16188a(String str, String str2, String str3, String str4, long j, long j2, long j3, boolean z) {
        C22128a.m8699J0(str, "phoneNumber", str2, "id", str3, "videoUrl", str4, FailedBinderCallBack.CALLER_ID);
        this.f45661a = str;
        this.f45662b = str2;
        this.f45663c = str3;
        this.f45664d = str4;
        this.f45665e = j;
        this.f45666f = j2;
        this.f45667g = j3;
        this.f45668h = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16188a)) {
                return false;
            }
            C16188a c16188a = (C16188a) obj;
            return l.a(this.f45661a, c16188a.f45661a) && l.a(this.f45662b, c16188a.f45662b) && l.a(this.f45663c, c16188a.f45663c) && l.a(this.f45664d, c16188a.f45664d) && this.f45665e == c16188a.f45665e && this.f45666f == c16188a.f45666f && this.f45667g == c16188a.f45667g && this.f45668h == c16188a.f45668h;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45661a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f45662b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f45663c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f45664d;
        if (str4 != null) {
            i = str4.hashCode();
        }
        int m34274a = C4876d.m34274a(this.f45665e);
        int m34274a2 = C4876d.m34274a(this.f45666f);
        int m34274a3 = C4876d.m34274a(this.f45667g);
        boolean z = this.f45668h;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + m34274a) * 31) + m34274a2) * 31) + m34274a3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("IncomingVideoId(phoneNumber=");
        m8728C.append(this.f45661a);
        m8728C.append(", id=");
        m8728C.append(this.f45662b);
        m8728C.append(", videoUrl=");
        m8728C.append(this.f45663c);
        m8728C.append(", callId=");
        m8728C.append(this.f45664d);
        m8728C.append(", receivedAt=");
        m8728C.append(this.f45665e);
        m8728C.append(", sizeBytes=");
        m8728C.append(this.f45666f);
        m8728C.append(", durationMillis=");
        m8728C.append(this.f45667g);
        m8728C.append(", mirrorPlayback=");
        return C22128a.m8590o(m8728C, this.f45668h, ")");
    }
}
