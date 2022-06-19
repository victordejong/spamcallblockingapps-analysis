package p193e.p194a.p804h.p827f;

import androidx.fragment.app.Fragment;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h.f.b$a */
/* loaded from: classes6-dex2jar.jar:e/a/h/f/b$a.class */
public final class b$a extends m implements a<Fragment> {

    /* renamed from: b */
    public final /* synthetic */ int f42162b;

    /* renamed from: c */
    public final /* synthetic */ Object f42163c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b$a(int i, Object obj) {
        super(0);
        this.f42162b = i;
        this.f42163c = obj;
    }

    public final Object invoke() {
        int i = this.f42162b;
        if (i == 0) {
            Object obj = ((b) this.f42163c).a.get(0);
            l.d(obj, "tabsFragment[0]");
            return (Fragment) obj;
        } else if (i != 1) {
            throw null;
        } else {
            Object obj2 = ((b) this.f42163c).a.get(1);
            l.d(obj2, "tabsFragment[1]");
            return (Fragment) obj2;
        }
    }
}
