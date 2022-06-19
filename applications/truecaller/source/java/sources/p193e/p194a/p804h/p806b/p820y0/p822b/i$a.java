package p193e.p194a.p804h.p806b.p820y0.p822b;

import android.graphics.drawable.Drawable;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.common.p156ui.listitem.ListItemX;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.y0.b.i$a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/y0/b/i$a.class */
public final class i$a {

    /* renamed from: a */
    public final CharSequence f42122a;

    /* renamed from: b */
    public final int f42123b;

    /* renamed from: c */
    public final int f42124c;

    /* renamed from: d */
    public final ListItemX.SubtitleColor f42125d;

    /* renamed from: e */
    public final Drawable f42126e;

    public i$a(CharSequence charSequence, int i, int i2, ListItemX.SubtitleColor subtitleColor, Drawable drawable, int i3) {
        i = (i3 & 2) != 0 ? 0 : i;
        i2 = (i3 & 4) != 0 ? 0 : i2;
        subtitleColor = (i3 & 8) != 0 ? ListItemX.SubtitleColor.DEFAULT : subtitleColor;
        drawable = (i3 & 16) != 0 ? null : drawable;
        l.e(charSequence, "text");
        l.e(subtitleColor, RemoteMessageConst.Notification.COLOR);
        this.f42122a = charSequence;
        this.f42123b = i;
        this.f42124c = i2;
        this.f42125d = subtitleColor;
        this.f42126e = drawable;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof i$a)) {
                return false;
            }
            i$a i_a = (i$a) obj;
            return l.a(this.f42122a, i_a.f42122a) && this.f42123b == i_a.f42123b && this.f42124c == i_a.f42124c && l.a(this.f42125d, i_a.f42125d) && l.a(this.f42126e, i_a.f42126e);
        }
        return true;
    }

    public int hashCode() {
        CharSequence charSequence = this.f42122a;
        int i = 0;
        int hashCode = charSequence != null ? charSequence.hashCode() : 0;
        int i2 = this.f42123b;
        int i3 = this.f42124c;
        ListItemX.SubtitleColor subtitleColor = this.f42125d;
        int hashCode2 = subtitleColor != null ? subtitleColor.hashCode() : 0;
        Drawable drawable = this.f42126e;
        if (drawable != null) {
            i = drawable.hashCode();
        }
        return (((((((hashCode * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SearchHighlightableText(text=");
        m8728C.append(this.f42122a);
        m8728C.append(", highlightingStartIndex=");
        m8728C.append(this.f42123b);
        m8728C.append(", highlightingEndIndex=");
        m8728C.append(this.f42124c);
        m8728C.append(", color=");
        m8728C.append(this.f42125d);
        m8728C.append(", icon=");
        m8728C.append(this.f42126e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
