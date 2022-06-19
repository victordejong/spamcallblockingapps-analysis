package androidx.appcompat.app;

import f.h.l.t;
import f.h.l.x;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$f.class */
class f$f implements Runnable {

    /* renamed from: f */
    final /* synthetic */ f f216f;

    f$f(f fVar) {
        this.f216f = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        f fVar = this.f216f;
        fVar.v.showAtLocation(fVar.u, 55, 0, 0);
        this.f216f.Y();
        if (!this.f216f.G0()) {
            this.f216f.u.setAlpha(1.0f);
            this.f216f.u.setVisibility(0);
            return;
        }
        this.f216f.u.setAlpha(0.0f);
        f fVar2 = this.f216f;
        x d = t.d(fVar2.u);
        d.a(1.0f);
        fVar2.x = d;
        this.f216f.x.g(new a(this));
    }
}
