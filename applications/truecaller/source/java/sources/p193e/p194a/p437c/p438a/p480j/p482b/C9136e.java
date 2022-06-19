package p193e.p194a.p437c.p438a.p480j.p482b;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.a.j.b.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/e.class */
public final class C9136e extends AbstractC9135d {

    /* renamed from: b */
    public final int f27838b;

    public C9136e(int i) {
        super(false, 0, 3);
        this.f27838b = i;
    }

    @Override // p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d
    /* renamed from: a */
    public int mo27848a() {
        return this.f27838b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C9136e) && this.f27838b == ((C9136e) obj).f27838b;
        }
        return true;
    }

    public int hashCode() {
        return this.f27838b;
    }

    public String toString() {
        return C22128a.m8697J2(C22128a.m8728C("PlaceholderFilterItem(id="), this.f27838b, ")");
    }
}
