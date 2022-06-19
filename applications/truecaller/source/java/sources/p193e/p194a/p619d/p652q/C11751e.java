package p193e.p194a.p619d.p652q;

import android.os.IBinder;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p622b.p623a.AbstractC11105d;
import p193e.p194a.p619d.p622b.p623a.BinderC11121s;
import p193e.p194a.p619d.p663x.C12221p;
import q3.a.w2.h;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.d.q.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/e.class */
public final class C11751e extends m implements l<IBinder, s> {

    /* renamed from: b */
    public final /* synthetic */ C11746b f34546b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11751e(C11746b c11746b) {
        super(1);
        this.f34546b = c11746b;
    }

    /* renamed from: d */
    public Object m24051d(Object obj) {
        IBinder iBinder = (IBinder) obj;
        s1.z.c.l.e(iBinder, "binder");
        AbstractC11105d abstractC11105d = ((BinderC11121s) iBinder).f32881a;
        C11746b c11746b = this.f34546b;
        c11746b.f34530c = abstractC11105d;
        if (c11746b.getState() == 0) {
            this.f34546b.setInitialized();
        }
        C11746b c11746b2 = this.f34546b;
        h<C11730l> mo25232K1 = abstractC11105d.mo25232K1();
        Objects.requireNonNull(c11746b2);
        C19291g.m13599P0(c11746b2, mo25232K1, new C11754h(c11746b2, null));
        C11746b c11746b3 = this.f34546b;
        h<C12221p> mo25227P1 = abstractC11105d.mo25227P1();
        Objects.requireNonNull(c11746b3);
        C19291g.m13599P0(c11746b3, mo25227P1, new C11753g(c11746b3, null));
        return s.a;
    }
}
