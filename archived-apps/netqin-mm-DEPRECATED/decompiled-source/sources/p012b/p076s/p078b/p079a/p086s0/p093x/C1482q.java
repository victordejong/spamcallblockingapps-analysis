package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.q */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/q.class */
public final class C1482q implements AbstractC1473m {

    /* renamed from: a */
    public final C1184p f6057a = new C1184p(10);

    /* renamed from: b */
    public AbstractC1362q f6058b;

    /* renamed from: c */
    public boolean f6059c;

    /* renamed from: d */
    public long f6060d;

    /* renamed from: e */
    public int f6061e;

    /* renamed from: f */
    public int f6062f;

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        this.f6059c = false;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        if ((i & 4) != 0) {
            this.f6059c = true;
            this.f6060d = j;
            this.f6061e = 0;
            this.f6062f = 0;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) {
        if (this.f6059c) {
            int a = pVar.m34372a();
            int i = this.f6062f;
            if (i < 10) {
                int min = Math.min(a, 10 - i);
                System.arraycopy(pVar.f4738a, pVar.m34363c(), this.f6057a.f4738a, this.f6062f, min);
                if (this.f6062f + min == 10) {
                    this.f6057a.m34358e(0);
                    if (73 == this.f6057a.m34344r() && 68 == this.f6057a.m34344r() && 51 == this.f6057a.m34344r()) {
                        this.f6057a.m34356f(3);
                        this.f6061e = this.f6057a.m34345q() + 10;
                    } else {
                        C1175j.m34414d("Id3Reader", "Discarding invalid ID3 tag");
                        this.f6059c = false;
                        return;
                    }
                }
            }
            int min2 = Math.min(a, this.f6061e - this.f6062f);
            this.f6058b.mo32827a(pVar, min2);
            this.f6062f += min2;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        AbstractC1362q a = iVar.mo32666a(dVar.m33244c(), 4);
        this.f6058b = a;
        a.mo32623a(Format.m38176a(dVar.m33245b(), "application/id3", (String) null, -1, (DrmInitData) null));
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
        int i;
        if (this.f6059c && (i = this.f6061e) != 0 && this.f6062f == i) {
            this.f6058b.mo32832a(this.f6060d, 1, i, 0, null);
            this.f6059c = false;
        }
    }
}
