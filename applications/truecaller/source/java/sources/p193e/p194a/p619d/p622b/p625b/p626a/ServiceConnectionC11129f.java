package p193e.p194a.p619d.p622b.p625b.p626a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p622b.p625b.AbstractC11147f;
import p193e.p194a.p619d.p622b.p625b.BinderC11145d;
import s1.z.c.l;
/* renamed from: e.a.d.b.b.a.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/a/f.class */
public final class ServiceConnectionC11129f implements ServiceConnection {

    /* renamed from: a */
    public final /* synthetic */ C11122a f32914a;

    public ServiceConnectionC11129f(C11122a c11122a) {
        this.f32914a = c11122a;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        l.e(iBinder, "binder");
        AbstractC11133j m25174RA = this.f32914a.m25174RA();
        AbstractC11147f abstractC11147f = ((BinderC11145d) iBinder).f32965a;
        C11135l c11135l = (C11135l) m25174RA;
        Objects.requireNonNull(c11135l);
        l.e(abstractC11147f, "binderPresenter");
        c11135l.f32921d = abstractC11147f;
        C11730l state = abstractC11147f.getState();
        AbstractC11134k abstractC11134k = (AbstractC11134k) c11135l.f57683a;
        if (abstractC11134k != null) {
            abstractC11134k.mo25157jr(state.f34452d, state.m24132b(), state.m24131c());
        }
        AbstractC11134k abstractC11134k2 = (AbstractC11134k) c11135l.f57683a;
        if (abstractC11134k2 != null) {
            abstractC11134k2.mo25159as(state.f34455g);
        }
        abstractC11147f.mo25124T9(c11135l);
        C19291g.m13599P0(c11135l, abstractC11147f.mo25126J0(), new C11137m(c11135l, null));
        if (c11135l.f32921d != null && c11135l.f32923f) {
            c11135l.m25148Jj();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        C11135l c11135l = (C11135l) this.f32914a.m25174RA();
        AbstractC11134k abstractC11134k = (AbstractC11134k) c11135l.f57683a;
        if (abstractC11134k != null) {
            abstractC11134k.mo25152t();
        }
        c11135l.f32921d = null;
    }
}
