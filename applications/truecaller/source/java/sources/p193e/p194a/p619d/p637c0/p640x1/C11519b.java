package p193e.p194a.p619d.p637c0.p640x1;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1131r0.C19263a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.x1.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/b.class */
public final class C11519b {

    /* renamed from: a */
    public final AbstractC11514a f33811a;

    /* renamed from: b */
    public final List<C19263a> f33812b;

    public C11519b(AbstractC11514a abstractC11514a, List<C19263a> list) {
        l.e(abstractC11514a, "audioRoute");
        l.e(list, "connectedHeadsets");
        this.f33811a = abstractC11514a;
        this.f33812b = list;
    }

    /* renamed from: a */
    public final C11519b m24558a(AbstractC11514a abstractC11514a, List<C19263a> list) {
        l.e(abstractC11514a, "audioRoute");
        l.e(list, "connectedHeadsets");
        return new C11519b(abstractC11514a, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11519b)) {
                return false;
            }
            C11519b c11519b = (C11519b) obj;
            return l.a(this.f33811a, c11519b.f33811a) && l.a(this.f33812b, c11519b.f33812b);
        }
        return true;
    }

    public int hashCode() {
        AbstractC11514a abstractC11514a = this.f33811a;
        int i = 0;
        int hashCode = abstractC11514a != null ? abstractC11514a.hashCode() : 0;
        List<C19263a> list = this.f33812b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AudioState(audioRoute=");
        m8728C.append(this.f33811a);
        m8728C.append(", connectedHeadsets=");
        return C22128a.m8602l(m8728C, this.f33812b, ")");
    }
}
