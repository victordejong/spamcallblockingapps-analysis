package p193e.p194a.p682e.p698c;

import android.graphics.drawable.Drawable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.e.c.r1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/r1.class */
public final class C13132r1 {

    /* renamed from: a */
    public final int f38081a;

    /* renamed from: b */
    public final Drawable f38082b;

    /* renamed from: c */
    public final Drawable f38083c;

    /* renamed from: d */
    public final Drawable f38084d;

    public C13132r1(int i, Drawable drawable, Drawable drawable2, Drawable drawable3) {
        this.f38081a = i;
        this.f38082b = drawable;
        this.f38083c = drawable2;
        this.f38084d = drawable3;
    }

    public C13132r1(int i, Drawable drawable, Drawable drawable2, Drawable drawable3, int i2) {
        drawable = (i2 & 2) != 0 ? null : drawable;
        drawable2 = (i2 & 4) != 0 ? null : drawable2;
        this.f38081a = i;
        this.f38082b = drawable;
        this.f38083c = drawable2;
        this.f38084d = null;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13132r1)) {
                return false;
            }
            C13132r1 c13132r1 = (C13132r1) obj;
            return this.f38081a == c13132r1.f38081a && l.a(this.f38082b, c13132r1.f38082b) && l.a(this.f38083c, c13132r1.f38083c) && l.a(this.f38084d, c13132r1.f38084d);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f38081a;
        Drawable drawable = this.f38082b;
        int i2 = 0;
        int hashCode = drawable != null ? drawable.hashCode() : 0;
        Drawable drawable2 = this.f38083c;
        int hashCode2 = drawable2 != null ? drawable2.hashCode() : 0;
        Drawable drawable3 = this.f38084d;
        if (drawable3 != null) {
            i2 = drawable3.hashCode();
        }
        return (((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsButtonsAppearance(actionColor=");
        m8728C.append(this.f38081a);
        m8728C.append(", collapsedBackground=");
        m8728C.append(this.f38082b);
        m8728C.append(", background=");
        m8728C.append(this.f38083c);
        m8728C.append(", separator=");
        m8728C.append(this.f38084d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
