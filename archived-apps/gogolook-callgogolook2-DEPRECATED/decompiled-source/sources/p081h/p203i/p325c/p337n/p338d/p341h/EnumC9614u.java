package p081h.p203i.p325c.p337n.p338d.p341h;

import androidx.annotation.NonNull;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9814b;
/* renamed from: h.i.c.n.d.h.u */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/u.class */
public enum EnumC9614u {
    NONE,
    JAVA_ONLY,
    ALL;

    @NonNull
    /* renamed from: a */
    public static EnumC9614u m14702a(@NonNull C9814b bVar) {
        boolean z = true;
        boolean z2 = bVar.f22274g == 2;
        if (bVar.f22275h != 2) {
            z = false;
        }
        return m14701a(z2, z);
    }

    @NonNull
    /* renamed from: a */
    public static EnumC9614u m14701a(boolean z, boolean z2) {
        return !z ? NONE : !z2 ? JAVA_ONLY : ALL;
    }
}
