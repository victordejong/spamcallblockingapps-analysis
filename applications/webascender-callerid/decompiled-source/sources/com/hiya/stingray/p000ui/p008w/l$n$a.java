package com.hiya.stingray.p000ui.p008w;

import com.hiya.stingray.ui.w.l;
import kotlin.s.k;
import r.a.a;
/* renamed from: com.hiya.stingray.ui.w.l$n$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/l$n$a.class */
final class l$n$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ l.n f295f;

    /* renamed from: g */
    final /* synthetic */ Throwable f296g;

    l$n$a(l.n nVar, Throwable th) {
        this.f295f = nVar;
        this.f296g = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((AbstractC0138o) this.f295f.f.n()).m991E0(k.g(), null);
        l lVar = this.f295f.f;
        l.H(lVar, l.y(lVar));
        a.e(this.f296g);
    }
}
