package p193e.p194a.p682e.p698c;

import android.graphics.drawable.Drawable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.e.c.p1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/p1.class */
public final class C13126p1 {

    /* renamed from: a */
    public final int f38068a;

    /* renamed from: b */
    public final Drawable f38069b;

    /* renamed from: c */
    public final int f38070c;

    /* renamed from: d */
    public final C13171y1 f38071d;

    /* renamed from: e */
    public final C13132r1 f38072e;

    public C13126p1(int i, Drawable drawable, int i2, C13171y1 c13171y1, C13132r1 c13132r1) {
        l.e(c13171y1, "headerAppearance");
        l.e(c13132r1, "buttonsAppearance");
        this.f38068a = i;
        this.f38069b = drawable;
        this.f38070c = i2;
        this.f38071d = c13171y1;
        this.f38072e = c13132r1;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13126p1)) {
                return false;
            }
            C13126p1 c13126p1 = (C13126p1) obj;
            return this.f38068a == c13126p1.f38068a && l.a(this.f38069b, c13126p1.f38069b) && this.f38070c == c13126p1.f38070c && l.a(this.f38071d, c13126p1.f38071d) && l.a(this.f38072e, c13126p1.f38072e);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f38068a;
        Drawable drawable = this.f38069b;
        int i2 = 0;
        int hashCode = drawable != null ? drawable.hashCode() : 0;
        int i3 = this.f38070c;
        C13171y1 c13171y1 = this.f38071d;
        int hashCode2 = c13171y1 != null ? c13171y1.hashCode() : 0;
        C13132r1 c13132r1 = this.f38072e;
        if (c13132r1 != null) {
            i2 = c13132r1.hashCode();
        }
        return (((((((i * 31) + hashCode) * 31) + i3) * 31) + hashCode2) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsAppearance(statusBarColor=");
        m8728C.append(this.f38068a);
        m8728C.append(", appBarBackground=");
        m8728C.append(this.f38069b);
        m8728C.append(", toolbarIconColor=");
        m8728C.append(this.f38070c);
        m8728C.append(", headerAppearance=");
        m8728C.append(this.f38071d);
        m8728C.append(", buttonsAppearance=");
        m8728C.append(this.f38072e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
