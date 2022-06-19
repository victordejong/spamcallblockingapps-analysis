package p193e.p194a.p619d.p652q;

import android.os.IBinder;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p622b.p625b.AbstractC11147f;
import p193e.p194a.p619d.p622b.p625b.BinderC11145d;
import q3.a.w2.h;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.d.q.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/c.class */
public final class C11749c extends m implements l<IBinder, s> {

    /* renamed from: b */
    public final /* synthetic */ C11746b f34544b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11749c(C11746b c11746b) {
        super(1);
        this.f34544b = c11746b;
    }

    /* renamed from: d */
    public Object m24052d(Object obj) {
        IBinder iBinder = (IBinder) obj;
        s1.z.c.l.e(iBinder, "binder");
        AbstractC11147f abstractC11147f = ((BinderC11145d) iBinder).f32965a;
        C11746b c11746b = this.f34544b;
        c11746b.f34531d = abstractC11147f;
        if (c11746b.getState() == 0) {
            this.f34544b.setInitialized();
        }
        C11746b c11746b2 = this.f34544b;
        h<C11730l> mo25125K1 = abstractC11147f.mo25125K1();
        Objects.requireNonNull(c11746b2);
        C19291g.m13599P0(c11746b2, mo25125K1, new C11754h(c11746b2, null));
        return s.a;
    }
}
