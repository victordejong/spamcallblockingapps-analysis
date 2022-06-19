package p193e.p194a.p437c.p438a.p446c.p450g;

import android.content.Context;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.c.a.c.g.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/g/b.class */
public final class C8832b {

    /* renamed from: a */
    public final int f26924a;

    /* renamed from: b */
    public final int f26925b;

    /* renamed from: c */
    public final l<Context, s> f26926c;

    /* JADX WARN: Multi-variable type inference failed */
    public C8832b(int i, int i2, l<? super Context, s> lVar) {
        s1.z.c.l.e(lVar, "action");
        this.f26924a = i;
        this.f26925b = i2;
        this.f26926c = lVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8832b)) {
                return false;
            }
            C8832b c8832b = (C8832b) obj;
            return this.f26924a == c8832b.f26924a && this.f26925b == c8832b.f26925b && s1.z.c.l.a(this.f26926c, c8832b.f26926c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f26924a;
        int i2 = this.f26925b;
        l<Context, s> lVar = this.f26926c;
        return (((i * 31) + i2) * 31) + (lVar != null ? lVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SecondaryTitleAction(text=");
        m8728C.append(this.f26924a);
        m8728C.append(", icon=");
        m8728C.append(this.f26925b);
        m8728C.append(", action=");
        m8728C.append(this.f26926c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
