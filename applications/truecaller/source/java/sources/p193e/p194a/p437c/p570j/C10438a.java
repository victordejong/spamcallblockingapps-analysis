package p193e.p194a.p437c.p570j;

import com.truecaller.common.payments.senderinfo.SenderInfo;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.j.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/j/a.class */
public final class C10438a {

    /* renamed from: a */
    public final String f31094a;

    /* renamed from: b */
    public final Long f31095b;

    /* renamed from: c */
    public final float f31096c;

    /* renamed from: d */
    public final String f31097d;

    /* renamed from: e */
    public final SenderInfo f31098e;

    /* renamed from: f */
    public final String f31099f;

    public C10438a(String str, Long l, float f, String str2, SenderInfo senderInfo, String str3) {
        l.e(str, "senderId");
        this.f31094a = str;
        this.f31095b = l;
        this.f31096c = f;
        this.f31097d = str2;
        this.f31098e = senderInfo;
        this.f31099f = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10438a)) {
                return false;
            }
            C10438a c10438a = (C10438a) obj;
            return l.a(this.f31094a, c10438a.f31094a) && l.a(this.f31095b, c10438a.f31095b) && Float.compare(this.f31096c, c10438a.f31096c) == 0 && l.a(this.f31097d, c10438a.f31097d) && l.a(this.f31098e, c10438a.f31098e) && l.a(this.f31099f, c10438a.f31099f);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31094a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Long l = this.f31095b;
        int hashCode2 = l != null ? l.hashCode() : 0;
        int floatToIntBits = Float.floatToIntBits(this.f31096c);
        String str2 = this.f31097d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        SenderInfo senderInfo = this.f31098e;
        int hashCode4 = senderInfo != null ? senderInfo.hashCode() : 0;
        String str3 = this.f31099f;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((((floatToIntBits + (((hashCode * 31) + hashCode2) * 31)) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DeepLinkMeta(senderId=");
        m8728C.append(this.f31094a);
        m8728C.append(", messageId=");
        m8728C.append(this.f31095b);
        m8728C.append(", amount=");
        m8728C.append(this.f31096c);
        m8728C.append(", insNum=");
        m8728C.append(this.f31097d);
        m8728C.append(", senderInfo=");
        m8728C.append(this.f31098e);
        m8728C.append(", phoneNumber=");
        return C22128a.m8618h(m8728C, this.f31099f, ")");
    }
}
