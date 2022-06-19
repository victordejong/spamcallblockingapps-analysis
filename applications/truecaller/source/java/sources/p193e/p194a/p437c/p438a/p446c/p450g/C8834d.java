package p193e.p194a.p437c.p438a.p446c.p450g;

import android.view.View;
import android.view.ViewGroup;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import java.lang.ref.WeakReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.g.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/g/d.class */
public final class C8834d {

    /* renamed from: a */
    public final WeakReference<ViewGroup> f26929a;

    /* renamed from: b */
    public final TooltipDirection f26930b;

    /* renamed from: c */
    public final int f26931c;

    /* renamed from: d */
    public final WeakReference<View> f26932d;

    /* renamed from: e */
    public final float f26933e;

    /* renamed from: f */
    public final Long f26934f;

    /* renamed from: g */
    public final a<s> f26935g;

    public C8834d(WeakReference<ViewGroup> weakReference, TooltipDirection tooltipDirection, int i, WeakReference<View> weakReference2, float f, Long l, a<s> aVar) {
        l.e(weakReference, "parent");
        l.e(tooltipDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        l.e(weakReference2, "anchor");
        l.e(aVar, "dismissListener");
        this.f26929a = weakReference;
        this.f26930b = tooltipDirection;
        this.f26931c = i;
        this.f26932d = weakReference2;
        this.f26933e = f;
        this.f26934f = l;
        this.f26935g = aVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8834d)) {
                return false;
            }
            C8834d c8834d = (C8834d) obj;
            return l.a(this.f26929a, c8834d.f26929a) && l.a(this.f26930b, c8834d.f26930b) && this.f26931c == c8834d.f26931c && l.a(this.f26932d, c8834d.f26932d) && Float.compare(this.f26933e, c8834d.f26933e) == 0 && l.a(this.f26934f, c8834d.f26934f) && l.a(this.f26935g, c8834d.f26935g);
        }
        return true;
    }

    public int hashCode() {
        WeakReference<ViewGroup> weakReference = this.f26929a;
        int i = 0;
        int hashCode = weakReference != null ? weakReference.hashCode() : 0;
        TooltipDirection tooltipDirection = this.f26930b;
        int hashCode2 = tooltipDirection != null ? tooltipDirection.hashCode() : 0;
        int i2 = this.f26931c;
        WeakReference<View> weakReference2 = this.f26932d;
        int hashCode3 = weakReference2 != null ? weakReference2.hashCode() : 0;
        int floatToIntBits = Float.floatToIntBits(this.f26933e);
        Long l = this.f26934f;
        int hashCode4 = l != null ? l.hashCode() : 0;
        a<s> aVar = this.f26935g;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return ((((floatToIntBits + (((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31)) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ToolTipData(parent=");
        m8728C.append(this.f26929a);
        m8728C.append(", direction=");
        m8728C.append(this.f26930b);
        m8728C.append(", textRes=");
        m8728C.append(this.f26931c);
        m8728C.append(", anchor=");
        m8728C.append(this.f26932d);
        m8728C.append(", anchorPadding=");
        m8728C.append(this.f26933e);
        m8728C.append(", dismissTime=");
        m8728C.append(this.f26934f);
        m8728C.append(", dismissListener=");
        m8728C.append(this.f26935g);
        m8728C.append(")");
        return m8728C.toString();
    }
}
