package p193e.p194a.p437c.p438a.p446c.p450g;

import com.truecaller.insights.p168ui.models.AdapterItem;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.g.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/g/f.class */
public final class C8836f {

    /* renamed from: a */
    public final AdapterItem.C4117i f26938a;

    /* renamed from: b */
    public final AbstractC9235b.C9244i f26939b;

    public C8836f(AdapterItem.C4117i c4117i, AbstractC9235b.C9244i c9244i) {
        l.e(c4117i, "titleItem");
        this.f26938a = c4117i;
        this.f26939b = c9244i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8836f)) {
                return false;
            }
            C8836f c8836f = (C8836f) obj;
            return l.a(this.f26938a, c8836f.f26938a) && l.a(this.f26939b, c8836f.f26939b);
        }
        return true;
    }

    public int hashCode() {
        AdapterItem.C4117i c4117i = this.f26938a;
        int i = 0;
        int hashCode = c4117i != null ? c4117i.hashCode() : 0;
        AbstractC9235b.C9244i c9244i = this.f26939b;
        if (c9244i != null) {
            i = c9244i.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UpdatesSection(titleItem=");
        m8728C.append(this.f26938a);
        m8728C.append(", items=");
        m8728C.append(this.f26939b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
