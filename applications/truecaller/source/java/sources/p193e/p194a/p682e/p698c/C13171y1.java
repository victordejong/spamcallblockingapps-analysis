package p193e.p194a.p682e.p698c;

import android.graphics.drawable.Drawable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.e.c.y1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/y1.class */
public final class C13171y1 {

    /* renamed from: a */
    public final int f38276a;

    /* renamed from: b */
    public final int f38277b;

    /* renamed from: c */
    public final int f38278c;

    /* renamed from: d */
    public final int f38279d;

    /* renamed from: e */
    public final Integer f38280e;

    /* renamed from: f */
    public final Integer f38281f;

    /* renamed from: g */
    public final Drawable f38282g;

    /* renamed from: h */
    public final Drawable f38283h;

    /* renamed from: i */
    public final int f38284i;

    /* renamed from: j */
    public final Drawable f38285j;

    public C13171y1(int i, int i2, int i3, int i4, Integer num, Integer num2, Drawable drawable, Drawable drawable2, int i5, Drawable drawable3) {
        l.e(drawable, "tagIconDrawable");
        this.f38276a = i;
        this.f38277b = i2;
        this.f38278c = i3;
        this.f38279d = i4;
        this.f38280e = num;
        this.f38281f = num2;
        this.f38282g = drawable;
        this.f38283h = drawable2;
        this.f38284i = i5;
        this.f38285j = drawable3;
    }

    public /* synthetic */ C13171y1(int i, int i2, int i3, int i4, Integer num, Integer num2, Drawable drawable, Drawable drawable2, int i5, Drawable drawable3, int i6) {
        this(i, i2, i3, i4, (i6 & 16) != 0 ? null : num, (i6 & 32) != 0 ? null : num2, drawable, null, i5, drawable3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13171y1)) {
                return false;
            }
            C13171y1 c13171y1 = (C13171y1) obj;
            return this.f38276a == c13171y1.f38276a && this.f38277b == c13171y1.f38277b && this.f38278c == c13171y1.f38278c && this.f38279d == c13171y1.f38279d && l.a(this.f38280e, c13171y1.f38280e) && l.a(this.f38281f, c13171y1.f38281f) && l.a(this.f38282g, c13171y1.f38282g) && l.a(this.f38283h, c13171y1.f38283h) && this.f38284i == c13171y1.f38284i && l.a(this.f38285j, c13171y1.f38285j);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f38276a;
        int i2 = this.f38277b;
        int i3 = this.f38278c;
        int i4 = this.f38279d;
        Integer num = this.f38280e;
        int i5 = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        Integer num2 = this.f38281f;
        int hashCode2 = num2 != null ? num2.hashCode() : 0;
        Drawable drawable = this.f38282g;
        int hashCode3 = drawable != null ? drawable.hashCode() : 0;
        Drawable drawable2 = this.f38283h;
        int hashCode4 = drawable2 != null ? drawable2.hashCode() : 0;
        int i6 = this.f38284i;
        Drawable drawable3 = this.f38285j;
        if (drawable3 != null) {
            i5 = drawable3.hashCode();
        }
        return (((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i6) * 31) + i5;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsHeaderAppearance(primaryTextColor=");
        m8728C.append(this.f38276a);
        m8728C.append(", secondaryTextColor=");
        m8728C.append(this.f38277b);
        m8728C.append(", suggestNameColor=");
        m8728C.append(this.f38278c);
        m8728C.append(", tagIconColor=");
        m8728C.append(this.f38279d);
        m8728C.append(", tagTextColor=");
        m8728C.append(this.f38280e);
        m8728C.append(", tagBackgroundColor=");
        m8728C.append(this.f38281f);
        m8728C.append(", tagIconDrawable=");
        m8728C.append(this.f38282g);
        m8728C.append(", background=");
        m8728C.append(this.f38283h);
        m8728C.append(", timezoneTextColor=");
        m8728C.append(this.f38284i);
        m8728C.append(", timezoneBackground=");
        m8728C.append(this.f38285j);
        m8728C.append(")");
        return m8728C.toString();
    }
}
