package p131c.p161d.p170b.p188c.p210w0;

import com.google.android.exoplayer2.Format;
import java.io.EOFException;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
/* renamed from: c.d.b.c.w0.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/f.class */
public final class C3041f implements AbstractC3054q {
    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3054q
    /* renamed from: a */
    public int mo28035a(AbstractC3043h hVar, int i, boolean z) throws IOException, InterruptedException {
        int b = hVar.mo28052b(i);
        if (b != -1) {
            return b;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3054q
    /* renamed from: a */
    public void mo28037a(long j, int i, int i2, int i3, AbstractC3054q.C3055a aVar) {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3054q
    /* renamed from: a */
    public void mo28036a(C2904v vVar, int i) {
        vVar.m28536f(i);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3054q
    /* renamed from: a */
    public void mo28034a(Format format) {
    }
}
