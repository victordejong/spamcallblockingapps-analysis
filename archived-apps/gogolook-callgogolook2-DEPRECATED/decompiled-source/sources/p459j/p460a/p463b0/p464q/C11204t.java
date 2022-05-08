package p459j.p460a.p463b0.p464q;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
/* renamed from: j.a.b0.q.t */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/t.class */
public final class C11204t implements AbstractC12391a {

    /* renamed from: a */
    public final int f25153a;

    public C11204t() {
        this(0, 1, null);
    }

    public C11204t(int i) {
        this.f25153a = i;
    }

    public /* synthetic */ C11204t(int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11204t)) {
            return false;
        }
        return getViewType() == ((C11204t) obj).getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25153a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        return hashCode;
    }

    public String toString() {
        return "EmptyViewData(viewType=" + getViewType() + ")";
    }
}
