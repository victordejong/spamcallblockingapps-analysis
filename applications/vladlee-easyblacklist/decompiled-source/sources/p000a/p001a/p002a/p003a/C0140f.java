package p000a.p001a.p002a.p003a;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.f */
/* loaded from: classes-dex2jar.jar:a/a/a/a/f.class */
public final class C0140f implements AbstractC0143i {

    /* renamed from: a */
    final CountDownLatch f331a;

    /* renamed from: b */
    final /* synthetic */ int f332b;

    /* renamed from: c */
    final /* synthetic */ C0137d f333c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0140f(C0137d dVar, int i) {
        this.f333c = dVar;
        this.f332b = i;
        this.f331a = new CountDownLatch(this.f332b);
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0143i
    /* renamed from: a */
    public final void mo10148a() {
        AtomicBoolean atomicBoolean;
        AbstractC0143i iVar;
        this.f331a.countDown();
        if (this.f331a.getCount() == 0) {
            atomicBoolean = this.f333c.f320n;
            atomicBoolean.set(true);
            iVar = this.f333c.f315i;
            iVar.mo10148a();
        }
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0143i
    /* renamed from: a */
    public final void mo10147a(Exception exc) {
        AbstractC0143i iVar;
        iVar = this.f333c.f315i;
        iVar.mo10147a(exc);
    }
}
