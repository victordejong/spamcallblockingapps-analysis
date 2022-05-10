package p530d.p531a.p533w0;

import p530d.p531a.p532v0.AbstractC9333b2;
import p610i.C10260c;
/* renamed from: d.a.w0.k */
/* loaded from: classes2-dex2jar.jar:d/a/w0/k.class */
public class C9584k implements AbstractC9333b2 {

    /* renamed from: a */
    public final C10260c f36591a;

    /* renamed from: b */
    public int f36592b;

    /* renamed from: c */
    public int f36593c;

    public C9584k(C10260c cVar, int i) {
        this.f36591a = cVar;
        this.f36592b = i;
    }

    @Override // p530d.p531a.p532v0.AbstractC9333b2
    /* renamed from: Y */
    public int mo2350Y() {
        return this.f36593c;
    }

    @Override // p530d.p531a.p532v0.AbstractC9333b2
    /* renamed from: a */
    public void mo2349a() {
    }

    @Override // p530d.p531a.p532v0.AbstractC9333b2
    /* renamed from: a */
    public void mo2348a(byte b) {
        this.f36591a.writeByte((int) b);
        this.f36592b--;
        this.f36593c++;
    }

    @Override // p530d.p531a.p532v0.AbstractC9333b2
    /* renamed from: b */
    public int mo2347b() {
        return this.f36592b;
    }

    /* renamed from: c */
    public C10260c m2346c() {
        return this.f36591a;
    }

    @Override // p530d.p531a.p532v0.AbstractC9333b2
    public void write(byte[] bArr, int i, int i2) {
        this.f36591a.write(bArr, i, i2);
        this.f36592b -= i2;
        this.f36593c += i2;
    }
}
