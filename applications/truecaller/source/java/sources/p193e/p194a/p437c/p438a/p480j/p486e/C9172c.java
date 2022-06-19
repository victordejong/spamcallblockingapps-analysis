package p193e.p194a.p437c.p438a.p480j.p486e;

import android.widget.FrameLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import p193e.p194a.p1164r.p1170c.AbstractC19738g;
import p193e.p194a.p437c.p438a.p477g.C9035h;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
/* renamed from: e.a.c.a.j.e.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/c.class */
public final class C9172c implements AbstractC19738g {

    /* renamed from: a */
    public final /* synthetic */ C9162a f27907a;

    /* renamed from: e.a.c.a.j.e.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/c$a.class */
    public static final class RunnableC9173a implements Runnable {
        public RunnableC9173a() {
            C9172c.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C9162a c9162a = C9172c.this.f27907a;
            l[] lVarArr = C9162a.f27891j;
            c9162a.m27839SA().f27495g.requestLayout();
            C9172c.this.f27907a.m27839SA().f27494f.f27413a.clearFocus();
        }
    }

    public C9172c(C9162a c9162a) {
        this.f27907a = c9162a;
    }

    @Override // p193e.p194a.p1164r.p1170c.AbstractC19738g
    /* renamed from: Iq */
    public void mo12922Iq() {
        BottomSheetBehavior<FrameLayout> m25915p0 = C10480a.m25915p0(this.f27907a);
        Integer valueOf = m25915p0 != null ? Integer.valueOf(m25915p0.F) : null;
        if (valueOf != null && valueOf.intValue() == 3) {
            C9162a c9162a = this.f27907a;
            l[] lVarArr = C9162a.f27891j;
            c9162a.m27838TA().m35153f("click", "keyboard_view");
        }
    }

    @Override // p193e.p194a.p1164r.p1170c.AbstractC19738g
    /* renamed from: Ys */
    public void mo12921Ys() {
        C9162a c9162a = this.f27907a;
        l[] lVarArr = C9162a.f27891j;
        C9035h m27839SA = c9162a.m27839SA();
        s1.z.c.l.d(m27839SA, "binding");
        m27839SA.f27489a.post(new RunnableC9173a());
    }
}
