package p193e.p194a.p437c.p580r.p589j;

import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0011\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0013\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0012\u001a\u0004\b\r\u0010\u0004¨\u0006\u0016"}, d2 = {"Le/a/c/r/j/l;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Le/a/c/r/j/w;", C22021b.f61237c, "Le/a/c/r/j/w;", "a", "()Le/a/c/r/j/w;", "baseFilter", "Ljava/lang/String;", "grm", "<init>", "(Ljava/lang/String;Le/a/c/r/j/w;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.r.j.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/l.class */
public final class C10611l {
    @b("grm")

    /* renamed from: a */
    private final String f31634a;
    @b("baseFilter")

    /* renamed from: b */
    private final C10639w f31635b;

    public C10611l(String str, C10639w c10639w) {
        l.e(str, "grm");
        l.e(c10639w, "baseFilter");
        this.f31634a = str;
        this.f31635b = c10639w;
    }

    /* renamed from: a */
    public final C10639w m25767a() {
        return this.f31635b;
    }

    /* renamed from: b */
    public final String m25766b() {
        return this.f31634a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10611l)) {
                return false;
            }
            C10611l c10611l = (C10611l) obj;
            return l.a(this.f31634a, c10611l.f31634a) && l.a(this.f31635b, c10611l.f31635b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31634a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C10639w c10639w = this.f31635b;
        if (c10639w != null) {
            i = c10639w.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GrmFilter(grm=");
        m8728C.append(this.f31634a);
        m8728C.append(", baseFilter=");
        m8728C.append(this.f31635b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
