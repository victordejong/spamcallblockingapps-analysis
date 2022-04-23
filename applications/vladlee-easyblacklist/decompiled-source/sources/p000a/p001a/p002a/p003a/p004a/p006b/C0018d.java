package p000a.p001a.p002a.p003a.p004a.p006b;

import p000a.p001a.p002a.p003a.C0137d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.b.d */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/d.class */
public final class C0018d extends AbstractRunnableC0025i {

    /* renamed from: a */
    final /* synthetic */ C0016b f31a;

    /* renamed from: b */
    final /* synthetic */ C0017c f32b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0018d(C0017c cVar, C0016b bVar) {
        this.f32b = cVar;
        this.f31a = bVar;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p006b.AbstractRunnableC0025i
    public final void onRun() {
        C0016b d;
        d = this.f32b.m10369d();
        if (!this.f31a.equals(d)) {
            C0137d.m10155c().mo10135a("Fabric", "Asychronously getting Advertising Info and storing it to preferences");
            this.f32b.m10375a(d);
        }
    }
}
