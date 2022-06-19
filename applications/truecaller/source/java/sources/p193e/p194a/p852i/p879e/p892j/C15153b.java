package p193e.p194a.p852i.p879e.p892j;

import android.view.ViewGroup;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.e.j.b */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/j/b.class */
public final class C15153b {

    /* renamed from: a */
    public final ViewGroup f43194a;

    /* renamed from: b */
    public final String f43195b;

    /* renamed from: c */
    public final boolean f43196c;

    /* renamed from: d */
    public final C15154c f43197d;

    public C15153b(ViewGroup viewGroup, String str, boolean z, C15154c c15154c) {
        l.e(viewGroup, "container");
        l.e(str, "itemText");
        l.e(c15154c, "uiStyle");
        this.f43194a = viewGroup;
        this.f43195b = str;
        this.f43196c = z;
        this.f43197d = c15154c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15153b)) {
                return false;
            }
            C15153b c15153b = (C15153b) obj;
            return l.a(this.f43194a, c15153b.f43194a) && l.a(this.f43195b, c15153b.f43195b) && this.f43196c == c15153b.f43196c && l.a(this.f43197d, c15153b.f43197d);
        }
        return true;
    }

    public int hashCode() {
        ViewGroup viewGroup = this.f43194a;
        int i = 0;
        int hashCode = viewGroup != null ? viewGroup.hashCode() : 0;
        String str = this.f43195b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        boolean z = this.f43196c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        C15154c c15154c = this.f43197d;
        if (c15154c != null) {
            i = c15154c.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TextSettings(container=");
        m8728C.append(this.f43194a);
        m8728C.append(", itemText=");
        m8728C.append(this.f43195b);
        m8728C.append(", hasHtml=");
        m8728C.append(this.f43196c);
        m8728C.append(", uiStyle=");
        m8728C.append(this.f43197d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
