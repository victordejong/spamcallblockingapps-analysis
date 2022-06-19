package p193e.p194a.p804h.p806b.p807d.p808a.p811b;

import android.graphics.drawable.Drawable;
import com.truecaller.common.p156ui.listitem.ListItemX;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.d.a.b.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/d/a/b/a.class */
public final class C14580a {

    /* renamed from: a */
    public final CharSequence f41899a;

    /* renamed from: b */
    public final Drawable f41900b;

    /* renamed from: c */
    public final Drawable f41901c;

    /* renamed from: d */
    public final ListItemX.SubtitleColor f41902d;

    /* renamed from: e */
    public final ListItemX.SubtitleColor f41903e;

    /* renamed from: f */
    public final ListItemX.SubtitleColor f41904f;

    public C14580a(CharSequence charSequence, Drawable drawable, Drawable drawable2, ListItemX.SubtitleColor subtitleColor, ListItemX.SubtitleColor subtitleColor2, ListItemX.SubtitleColor subtitleColor3) {
        l.e(charSequence, "text");
        l.e(subtitleColor, "subtitleColor");
        l.e(subtitleColor2, "firstIconColor");
        l.e(subtitleColor3, "secondIconColor");
        this.f41899a = charSequence;
        this.f41900b = drawable;
        this.f41901c = drawable2;
        this.f41902d = subtitleColor;
        this.f41903e = subtitleColor2;
        this.f41904f = subtitleColor3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14580a)) {
                return false;
            }
            C14580a c14580a = (C14580a) obj;
            return l.a(this.f41899a, c14580a.f41899a) && l.a(this.f41900b, c14580a.f41900b) && l.a(this.f41901c, c14580a.f41901c) && l.a(this.f41902d, c14580a.f41902d) && l.a(this.f41903e, c14580a.f41903e) && l.a(this.f41904f, c14580a.f41904f);
        }
        return true;
    }

    public int hashCode() {
        CharSequence charSequence = this.f41899a;
        int i = 0;
        int hashCode = charSequence != null ? charSequence.hashCode() : 0;
        Drawable drawable = this.f41900b;
        int hashCode2 = drawable != null ? drawable.hashCode() : 0;
        Drawable drawable2 = this.f41901c;
        int hashCode3 = drawable2 != null ? drawable2.hashCode() : 0;
        ListItemX.SubtitleColor subtitleColor = this.f41902d;
        int hashCode4 = subtitleColor != null ? subtitleColor.hashCode() : 0;
        ListItemX.SubtitleColor subtitleColor2 = this.f41903e;
        int hashCode5 = subtitleColor2 != null ? subtitleColor2.hashCode() : 0;
        ListItemX.SubtitleColor subtitleColor3 = this.f41904f;
        if (subtitleColor3 != null) {
            i = subtitleColor3.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ListItemXSubtitle(text=");
        m8728C.append(this.f41899a);
        m8728C.append(", firstIcon=");
        m8728C.append(this.f41900b);
        m8728C.append(", secondIcon=");
        m8728C.append(this.f41901c);
        m8728C.append(", subtitleColor=");
        m8728C.append(this.f41902d);
        m8728C.append(", firstIconColor=");
        m8728C.append(this.f41903e);
        m8728C.append(", secondIconColor=");
        m8728C.append(this.f41904f);
        m8728C.append(")");
        return m8728C.toString();
    }
}
