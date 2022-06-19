package p193e.p194a.p773g.p774a;

import com.truecaller.acs.p131ui.ActionButtonType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.g.a.f */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/f.class */
public final class C14187f {

    /* renamed from: a */
    public final ActionButtonType f40938a;

    /* renamed from: b */
    public final AbstractC14197g f40939b;

    /* renamed from: c */
    public final boolean f40940c;

    public C14187f(ActionButtonType actionButtonType, AbstractC14197g abstractC14197g, boolean z) {
        l.e(actionButtonType, "type");
        l.e(abstractC14197g, "eventListener");
        this.f40938a = actionButtonType;
        this.f40939b = abstractC14197g;
        this.f40940c = z;
    }

    public C14187f(ActionButtonType actionButtonType, AbstractC14197g abstractC14197g, boolean z, int i) {
        z = (i & 4) != 0 ? false : z;
        l.e(actionButtonType, "type");
        l.e(abstractC14197g, "eventListener");
        this.f40938a = actionButtonType;
        this.f40939b = abstractC14197g;
        this.f40940c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14187f)) {
                return false;
            }
            C14187f c14187f = (C14187f) obj;
            return l.a(this.f40938a, c14187f.f40938a) && l.a(this.f40939b, c14187f.f40939b) && this.f40940c == c14187f.f40940c;
        }
        return true;
    }

    public int hashCode() {
        ActionButtonType actionButtonType = this.f40938a;
        int i = 0;
        int hashCode = actionButtonType != null ? actionButtonType.hashCode() : 0;
        AbstractC14197g abstractC14197g = this.f40939b;
        if (abstractC14197g != null) {
            i = abstractC14197g.hashCode();
        }
        boolean z = this.f40940c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ActionButton(type=");
        m8728C.append(this.f40938a);
        m8728C.append(", eventListener=");
        m8728C.append(this.f40939b);
        m8728C.append(", showPromo=");
        return C22128a.m8590o(m8728C, this.f40940c, ")");
    }
}
