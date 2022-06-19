package com.hiya.stingray.p030ui.p038w;

import com.hiya.stingray.ui.w.l;
import kotlin.s.k;
import r.a.a;
/* renamed from: com.hiya.stingray.ui.w.l$n$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/l$n$a.class */
final class l$n$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ l.n f4974f;

    /* renamed from: g */
    final /* synthetic */ Throwable f4975g;

    l$n$a(l.n nVar, Throwable th) {
        this.f4974f = nVar;
        this.f4975g = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((AbstractC1800o) this.f4974f.f.n()).m991E0(k.g(), null);
        l lVar = this.f4974f.f;
        l.H(lVar, l.y(lVar));
        a.e(this.f4975g);
    }
}
