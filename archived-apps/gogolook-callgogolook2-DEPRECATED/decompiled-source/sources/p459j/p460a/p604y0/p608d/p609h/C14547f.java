package p459j.p460a.p604y0.p608d.p609h;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y0.d.h.f */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/f.class */
public final class C14547f implements AbstractC12391a {

    /* renamed from: a */
    public String f32499a;

    /* renamed from: b */
    public String f32500b;

    /* renamed from: c */
    public final int f32501c;

    public C14547f(String str, String str2, int i) {
        C15149k.m377b(str2, "price");
        this.f32499a = str;
        this.f32500b = str2;
        this.f32501c = i;
    }

    public /* synthetic */ C14547f(String str, String str2, int i, int i2, C15145g gVar) {
        this(str, str2, (i2 & 4) != 0 ? C14537a.f32487g.m1152b() : i);
    }

    /* renamed from: a */
    public final String m1137a() {
        return this.f32499a;
    }

    /* renamed from: b */
    public final String m1136b() {
        return this.f32500b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14547f)) {
            return false;
        }
        C14547f fVar = (C14547f) obj;
        if (!C15149k.m384a((Object) this.f32499a, (Object) fVar.f32499a) || !C15149k.m384a((Object) this.f32500b, (Object) fVar.f32500b)) {
            return false;
        }
        return getViewType() == fVar.getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f32501c;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f32499a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f32500b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        hashCode = Integer.valueOf(getViewType()).hashCode();
        return (((hashCode2 * 31) + i) * 31) + hashCode;
    }

    public String toString() {
        return "VasMainHeaderItem(period=" + this.f32499a + ", price=" + this.f32500b + ", viewType=" + getViewType() + ")";
    }
}
