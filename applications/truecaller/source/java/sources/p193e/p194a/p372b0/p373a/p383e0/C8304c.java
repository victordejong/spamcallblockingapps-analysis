package p193e.p194a.p372b0.p373a.p383e0;

import android.view.View;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b0.a.e0.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/e0/c.class */
public final class C8304c {

    /* renamed from: a */
    public final C8303b f25582a;

    /* renamed from: b */
    public final View$OnLayoutChangeListenerC8305d f25583b;

    /* renamed from: c */
    public final View f25584c;

    public C8304c(C8303b c8303b, View$OnLayoutChangeListenerC8305d view$OnLayoutChangeListenerC8305d, View view) {
        l.e(c8303b, "tooltip");
        l.e(view$OnLayoutChangeListenerC8305d, "layoutListener");
        l.e(view, "dismissView");
        this.f25582a = c8303b;
        this.f25583b = view$OnLayoutChangeListenerC8305d;
        this.f25584c = view;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8304c)) {
                return false;
            }
            C8304c c8304c = (C8304c) obj;
            return l.a(this.f25582a, c8304c.f25582a) && l.a(this.f25583b, c8304c.f25583b) && l.a(this.f25584c, c8304c.f25584c);
        }
        return true;
    }

    public int hashCode() {
        C8303b c8303b = this.f25582a;
        int i = 0;
        int hashCode = c8303b != null ? c8303b.hashCode() : 0;
        View$OnLayoutChangeListenerC8305d view$OnLayoutChangeListenerC8305d = this.f25583b;
        int hashCode2 = view$OnLayoutChangeListenerC8305d != null ? view$OnLayoutChangeListenerC8305d.hashCode() : 0;
        View view = this.f25584c;
        if (view != null) {
            i = view.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TooltipHolder(tooltip=");
        m8728C.append(this.f25582a);
        m8728C.append(", layoutListener=");
        m8728C.append(this.f25583b);
        m8728C.append(", dismissView=");
        m8728C.append(this.f25584c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
