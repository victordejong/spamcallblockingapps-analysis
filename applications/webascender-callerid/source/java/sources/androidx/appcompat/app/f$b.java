package androidx.appcompat.app;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$b.class */
class f$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ f f215f;

    f$b(f fVar) {
        this.f215f = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        f fVar = this.f215f;
        if ((fVar.Z & 1) != 0) {
            fVar.X(0);
        }
        f fVar2 = this.f215f;
        if ((fVar2.Z & 4096) != 0) {
            fVar2.X(108);
        }
        f fVar3 = this.f215f;
        fVar3.Y = false;
        fVar3.Z = 0;
    }
}
