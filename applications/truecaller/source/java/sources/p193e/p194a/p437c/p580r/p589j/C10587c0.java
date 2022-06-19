package p193e.p194a.p437c.p580r.p589j;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.c0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/c0.class */
public final class C10587c0 extends AbstractC10591e0 {

    /* renamed from: a */
    public final String f31581a;

    /* renamed from: b */
    public final Integer f31582b;

    /* renamed from: c */
    public final Integer f31583c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10587c0(String str, Integer num, Integer num2) {
        super(null);
        l.e(str, "text");
        this.f31581a = str;
        this.f31582b = num;
        this.f31583c = num2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10587c0(String str, Integer num, Integer num2, int i) {
        super(null);
        l.e(str, "text");
        this.f31581a = str;
        this.f31582b = null;
        this.f31583c = null;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10587c0)) {
                return false;
            }
            C10587c0 c10587c0 = (C10587c0) obj;
            return l.a(this.f31581a, c10587c0.f31581a) && l.a(this.f31582b, c10587c0.f31582b) && l.a(this.f31583c, c10587c0.f31583c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31581a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Integer num = this.f31582b;
        int hashCode2 = num != null ? num.hashCode() : 0;
        Integer num2 = this.f31583c;
        if (num2 != null) {
            i = num2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TextPropertyMapping(text=");
        m8728C.append(this.f31581a);
        m8728C.append(", textColor=");
        m8728C.append(this.f31582b);
        m8728C.append(", backgroundTint=");
        return C22128a.m8689L2(m8728C, this.f31583c, ")");
    }
}
