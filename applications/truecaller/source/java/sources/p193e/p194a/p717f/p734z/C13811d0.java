package p193e.p194a.p717f.p734z;

import com.truecaller.incallui.service.CallType;
import com.truecaller.incallui.utils.BlockAction;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.f.z.d0 */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/d0.class */
public final class C13811d0 {

    /* renamed from: a */
    public final String f40046a;

    /* renamed from: b */
    public final CallType f40047b;

    /* renamed from: c */
    public final long f40048c;

    /* renamed from: d */
    public final long f40049d;

    /* renamed from: e */
    public final String f40050e;

    /* renamed from: f */
    public final boolean f40051f;

    /* renamed from: g */
    public final boolean f40052g;

    /* renamed from: h */
    public final BlockAction f40053h;

    /* renamed from: i */
    public final boolean f40054i;

    public C13811d0(String str, CallType callType, long j, long j2, String str2, boolean z, boolean z2, BlockAction blockAction, boolean z3) {
        l.e(str, "phoneNumber");
        l.e(callType, "callType");
        this.f40046a = str;
        this.f40047b = callType;
        this.f40048c = j;
        this.f40049d = j2;
        this.f40050e = str2;
        this.f40051f = z;
        this.f40052g = z2;
        this.f40053h = blockAction;
        this.f40054i = z3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13811d0)) {
                return false;
            }
            C13811d0 c13811d0 = (C13811d0) obj;
            return l.a(this.f40046a, c13811d0.f40046a) && l.a(this.f40047b, c13811d0.f40047b) && this.f40048c == c13811d0.f40048c && this.f40049d == c13811d0.f40049d && l.a(this.f40050e, c13811d0.f40050e) && this.f40051f == c13811d0.f40051f && this.f40052g == c13811d0.f40052g && l.a(this.f40053h, c13811d0.f40053h) && this.f40054i == c13811d0.f40054i;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f40046a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        CallType callType = this.f40047b;
        int hashCode2 = callType != null ? callType.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f40048c);
        int m34274a2 = C4876d.m34274a(this.f40049d);
        String str2 = this.f40050e;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.f40051f;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f40052g;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        BlockAction blockAction = this.f40053h;
        if (blockAction != null) {
            i = blockAction.hashCode();
        }
        boolean z3 = this.f40054i;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + m34274a2) * 31) + hashCode3) * 31) + i3) * 31) + i4) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InCallUiAcsData(phoneNumber=");
        m8728C.append(this.f40046a);
        m8728C.append(", callType=");
        m8728C.append(this.f40047b);
        m8728C.append(", timestamp=");
        m8728C.append(this.f40048c);
        m8728C.append(", duration=");
        m8728C.append(this.f40049d);
        m8728C.append(", simIndex=");
        m8728C.append(this.f40050e);
        m8728C.append(", rejected=");
        m8728C.append(this.f40051f);
        m8728C.append(", rejectedFromNotification=");
        m8728C.append(this.f40052g);
        m8728C.append(", blockAction=");
        m8728C.append(this.f40053h);
        m8728C.append(", isFromTruecaller=");
        return C22128a.m8590o(m8728C, this.f40054i, ")");
    }
}
