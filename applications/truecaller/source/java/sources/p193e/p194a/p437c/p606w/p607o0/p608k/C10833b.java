package p193e.p194a.p437c.p606w.p607o0.p608k;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.k.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/b.class */
public final class C10833b {

    /* renamed from: a */
    public final List<String> f32178a;

    /* renamed from: b */
    public final List<String> f32179b;

    /* renamed from: c */
    public final List<String> f32180c;

    /* renamed from: d */
    public final List<String> f32181d;

    public C10833b(List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        l.e(list, "updateCategories");
        l.e(list2, "cardCategories");
        l.e(list3, "grammars");
        l.e(list4, "senders");
        this.f32178a = list;
        this.f32179b = list2;
        this.f32180c = list3;
        this.f32181d = list4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10833b)) {
                return false;
            }
            C10833b c10833b = (C10833b) obj;
            return l.a(this.f32178a, c10833b.f32178a) && l.a(this.f32179b, c10833b.f32179b) && l.a(this.f32180c, c10833b.f32180c) && l.a(this.f32181d, c10833b.f32181d);
        }
        return true;
    }

    public int hashCode() {
        List<String> list = this.f32178a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<String> list2 = this.f32179b;
        int hashCode2 = list2 != null ? list2.hashCode() : 0;
        List<String> list3 = this.f32180c;
        int hashCode3 = list3 != null ? list3.hashCode() : 0;
        List<String> list4 = this.f32181d;
        if (list4 != null) {
            i = list4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("QueryFilters(updateCategories=");
        m8728C.append(this.f32178a);
        m8728C.append(", cardCategories=");
        m8728C.append(this.f32179b);
        m8728C.append(", grammars=");
        m8728C.append(this.f32180c);
        m8728C.append(", senders=");
        return C22128a.m8602l(m8728C, this.f32181d, ")");
    }
}
