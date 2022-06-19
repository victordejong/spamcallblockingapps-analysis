package p193e.p194a.p852i.p879e.p892j;

import android.widget.LinearLayout;
import com.truecaller.ads.offline.dto.UiComponent;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.e.j.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/j/a.class */
public final class C15152a {

    /* renamed from: a */
    public final LinearLayout f43192a;

    /* renamed from: b */
    public final List<UiComponent> f43193b;

    /* JADX WARN: Multi-variable type inference failed */
    public C15152a(LinearLayout linearLayout, List<? extends UiComponent> list) {
        l.e(linearLayout, "container");
        l.e(list, "component");
        this.f43192a = linearLayout;
        this.f43193b = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15152a)) {
                return false;
            }
            C15152a c15152a = (C15152a) obj;
            return l.a(this.f43192a, c15152a.f43192a) && l.a(this.f43193b, c15152a.f43193b);
        }
        return true;
    }

    public int hashCode() {
        LinearLayout linearLayout = this.f43192a;
        int i = 0;
        int hashCode = linearLayout != null ? linearLayout.hashCode() : 0;
        List<UiComponent> list = this.f43193b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OfflineAdsComponentHolder(container=");
        m8728C.append(this.f43192a);
        m8728C.append(", component=");
        return C22128a.m8602l(m8728C, this.f43193b, ")");
    }
}
