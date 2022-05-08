package com.a.a.a.d.a;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/a/x.class */
final class x implements r<o> {

    /* renamed from: a  reason: collision with root package name */
    private w f393a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(w wVar) {
        this.f393a = wVar;
    }

    private o a(o oVar) {
        if (this.f393a.f392b != null) {
            throw p.a();
        }
        this.f393a.f392b = oVar;
        return this.f393a;
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(b bVar) {
        o oVar;
        if (this.f393a.f392b == null) {
            this.f393a.f392b = bVar;
            oVar = this.f393a;
        } else if (bVar.f369b != null) {
            throw p.a();
        } else {
            bVar.f369b = this.f393a;
            oVar = bVar;
        }
        return oVar;
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(d dVar) {
        return a((o) dVar);
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(g gVar) {
        return a((o) gVar);
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(j jVar) {
        return a((o) jVar);
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(w wVar) {
        return a((o) wVar);
    }
}
