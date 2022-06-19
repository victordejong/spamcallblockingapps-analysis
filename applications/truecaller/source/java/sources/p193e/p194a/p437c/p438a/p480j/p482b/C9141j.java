package p193e.p194a.p437c.p438a.p480j.p482b;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p579q.C10511h;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.b.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/j.class */
public final class C9141j extends AbstractC9135d {

    /* renamed from: b */
    public int f27849b;

    /* renamed from: c */
    public final C10511h f27850c;

    /* renamed from: d */
    public final String f27851d;

    /* renamed from: e */
    public final boolean f27852e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9141j(C10511h c10511h, String str, boolean z) {
        super(z, 0, 2);
        l.e(c10511h, "model");
        l.e(str, "label");
        this.f27850c = c10511h;
        this.f27851d = str;
        this.f27852e = z;
        this.f27849b = str.hashCode();
    }

    @Override // p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d
    /* renamed from: a */
    public int mo27848a() {
        return this.f27849b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(C9141j.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.insights.ui.filters.model.SenderFilterItem");
        C9141j c9141j = (C9141j) obj;
        return !(l.a(this.f27851d, c9141j.f27851d) ^ true) && this.f27852e == c9141j.f27852e;
    }

    public int hashCode() {
        return (this.f27851d.hashCode() * 31) + C0424b.m42597a(this.f27852e);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderFilterItem(model=");
        m8728C.append(this.f27850c);
        m8728C.append(", label=");
        m8728C.append(this.f27851d);
        m8728C.append(", isSelected=");
        return C22128a.m8590o(m8728C, this.f27852e, ")");
    }
}
