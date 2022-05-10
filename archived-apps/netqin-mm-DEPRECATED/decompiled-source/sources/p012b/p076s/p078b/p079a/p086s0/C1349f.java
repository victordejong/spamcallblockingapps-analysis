package p012b.p076s.p078b.p079a.p086s0;

import androidx.media2.exoplayer.external.Format;
import java.io.EOFException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
/* renamed from: b.s.b.a.s0.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/f.class */
public final class C1349f implements AbstractC1362q {
    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
    /* renamed from: a */
    public int mo32825a(AbstractC1351h hVar, int i, boolean z) throws IOException, InterruptedException {
        int b = hVar.mo33616b(i);
        if (b != -1) {
            return b;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
    /* renamed from: a */
    public void mo32832a(long j, int i, int i2, int i3, AbstractC1362q.C1363a aVar) {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
    /* renamed from: a */
    public void mo32623a(Format format) {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
    /* renamed from: a */
    public void mo32827a(C1184p pVar, int i) {
        pVar.m34356f(i);
    }
}
