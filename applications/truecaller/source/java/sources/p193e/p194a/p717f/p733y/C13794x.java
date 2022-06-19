package p193e.p194a.p717f.p733y;

import android.telecom.Call;
import com.truecaller.incallui.service.CallType;
import com.truecaller.incallui.utils.BlockAction;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.f.y.x */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/x.class */
public final class C13794x {

    /* renamed from: a */
    public Call f40005a;

    /* renamed from: b */
    public final CallType f40006b;

    /* renamed from: c */
    public final long f40007c;

    /* renamed from: d */
    public final BlockAction f40008d;

    /* renamed from: e */
    public final boolean f40009e;

    /* renamed from: f */
    public boolean f40010f;

    /* renamed from: g */
    public boolean f40011g;

    public C13794x(Call call, CallType callType, long j, BlockAction blockAction, boolean z, boolean z2, boolean z3, int i) {
        blockAction = (i & 8) != 0 ? null : blockAction;
        z2 = (i & 32) != 0 ? false : z2;
        z3 = (i & 64) != 0 ? true : z3;
        l.e(call, "call");
        l.e(callType, "callType");
        this.f40005a = call;
        this.f40006b = callType;
        this.f40007c = j;
        this.f40008d = blockAction;
        this.f40009e = z;
        this.f40010f = z2;
        this.f40011g = z3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13794x)) {
                return false;
            }
            C13794x c13794x = (C13794x) obj;
            return l.a(this.f40005a, c13794x.f40005a) && l.a(this.f40006b, c13794x.f40006b) && this.f40007c == c13794x.f40007c && l.a(this.f40008d, c13794x.f40008d) && this.f40009e == c13794x.f40009e && this.f40010f == c13794x.f40010f && this.f40011g == c13794x.f40011g;
        }
        return true;
    }

    public int hashCode() {
        Call call = this.f40005a;
        int i = 0;
        int hashCode = call != null ? call.hashCode() : 0;
        CallType callType = this.f40006b;
        int hashCode2 = callType != null ? callType.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f40007c);
        BlockAction blockAction = this.f40008d;
        if (blockAction != null) {
            i = blockAction.hashCode();
        }
        boolean z = this.f40009e;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f40010f;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        boolean z3 = this.f40011g;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + i) * 31) + i3) * 31) + i4) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PhoneCall(call=");
        m8728C.append(this.f40005a);
        m8728C.append(", callType=");
        m8728C.append(this.f40006b);
        m8728C.append(", creationTime=");
        m8728C.append(this.f40007c);
        m8728C.append(", blockAction=");
        m8728C.append(this.f40008d);
        m8728C.append(", isFromTruecaller=");
        m8728C.append(this.f40009e);
        m8728C.append(", rejectedFromNotification=");
        m8728C.append(this.f40010f);
        m8728C.append(", showAcs=");
        return C22128a.m8590o(m8728C, this.f40011g, ")");
    }
}
