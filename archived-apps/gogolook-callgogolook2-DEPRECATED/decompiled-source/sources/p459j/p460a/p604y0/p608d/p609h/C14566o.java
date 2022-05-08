package p459j.p460a.p604y0.p608d.p609h;

import android.text.SpannableStringBuilder;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y0.d.h.o */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/o.class */
public final class C14566o implements AbstractC12391a {

    /* renamed from: a */
    public SpannableStringBuilder f32532a;

    /* renamed from: b */
    public int f32533b;

    /* renamed from: c */
    public final int f32534c;

    public C14566o(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        C15149k.m377b(spannableStringBuilder, "title");
        this.f32532a = spannableStringBuilder;
        this.f32533b = i;
        this.f32534c = i2;
    }

    public /* synthetic */ C14566o(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, C15145g gVar) {
        this(spannableStringBuilder, i, (i3 & 4) != 0 ? C14537a.f32487g.m1148f() : i2);
    }

    /* renamed from: a */
    public final int m1117a() {
        return this.f32533b;
    }

    /* renamed from: b */
    public final SpannableStringBuilder m1116b() {
        return this.f32532a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14566o)) {
            return false;
        }
        C14566o oVar = (C14566o) obj;
        if (!C15149k.m384a(this.f32532a, oVar.f32532a)) {
            return false;
        }
        if (!(this.f32533b == oVar.f32533b)) {
            return false;
        }
        return getViewType() == oVar.getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f32534c;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        SpannableStringBuilder spannableStringBuilder = this.f32532a;
        int hashCode3 = spannableStringBuilder != null ? spannableStringBuilder.hashCode() : 0;
        hashCode = Integer.valueOf(this.f32533b).hashCode();
        hashCode2 = Integer.valueOf(getViewType()).hashCode();
        return (((hashCode3 * 31) + hashCode) * 31) + hashCode2;
    }

    public String toString() {
        return "VasSpannableMessageSectionItem(title=" + ((Object) this.f32532a) + ", color=" + this.f32533b + ", viewType=" + getViewType() + ")";
    }
}
