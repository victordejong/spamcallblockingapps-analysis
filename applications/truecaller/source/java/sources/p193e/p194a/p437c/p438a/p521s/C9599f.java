package p193e.p194a.p437c.p438a.p521s;

import android.content.Context;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import e.m.a.g.x.e;
import p193e.p194a.p437c.p438a.p521s.C9593d;
import s1.z.c.l;
/* renamed from: e.a.c.a.s.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/f.class */
public final class C9599f implements e.b {

    /* renamed from: a */
    public final /* synthetic */ C9593d f29023a;

    /* renamed from: b */
    public final /* synthetic */ ViewPager2 f29024b;

    public C9599f(C9593d c9593d, ViewPager2 viewPager2) {
        this.f29023a = c9593d;
        this.f29024b = viewPager2;
    }

    /* renamed from: a */
    public final void m27401a(TabLayout.C2114g c2114g, int i) {
        l.e(c2114g, "tab");
        C9593d.C9597d c9597d = this.f29023a.f29010b.get(i);
        Context context = this.f29024b.getContext();
        l.d(context, "pager.context");
        C9592c c9592c = new C9592c(context, null, 0, 6);
        c9592c.m27404f1(c9597d.f29017a.title(), c9597d.f29018b, c9597d.f29019c, c9597d.f29017a.tag());
        c2114g.f6852e = c9592c;
        c2114g.m38371c();
    }
}
