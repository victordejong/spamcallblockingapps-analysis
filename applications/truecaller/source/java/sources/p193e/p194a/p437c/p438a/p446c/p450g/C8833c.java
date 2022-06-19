package p193e.p194a.p437c.p438a.p446c.p450g;

import android.content.Context;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.c.a.c.g.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/g/c.class */
public final class C8833c {

    /* renamed from: a */
    public final int f26927a;

    /* renamed from: b */
    public final l<Context, s> f26928b;

    /* JADX WARN: Multi-variable type inference failed */
    public C8833c(int i, l<? super Context, s> lVar) {
        s1.z.c.l.e(lVar, "action");
        this.f26927a = i;
        this.f26928b = lVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8833c)) {
                return false;
            }
            C8833c c8833c = (C8833c) obj;
            return this.f26927a == c8833c.f26927a && s1.z.c.l.a(this.f26928b, c8833c.f26928b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f26927a;
        l<Context, s> lVar = this.f26928b;
        return (i * 31) + (lVar != null ? lVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TitleAction(text=");
        m8728C.append(this.f26927a);
        m8728C.append(", action=");
        m8728C.append(this.f26928b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
