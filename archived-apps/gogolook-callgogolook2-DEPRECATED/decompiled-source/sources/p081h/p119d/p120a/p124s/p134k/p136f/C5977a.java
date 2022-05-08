package p081h.p119d.p120a.p124s.p134k.p136f;

import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
/* renamed from: h.d.a.s.k.f.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/f/a.class */
public class C5977a implements AbstractC5848l<byte[]> {

    /* renamed from: a */
    public final byte[] f14919a;

    public C5977a(byte[] bArr) {
        if (bArr != null) {
            this.f14919a = bArr;
            return;
        }
        throw new NullPointerException("Bytes must not be null");
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    /* renamed from: a */
    public int mo24037a() {
        return this.f14919a.length;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    /* renamed from: b */
    public void mo24036b() {
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    public byte[] get() {
        return this.f14919a;
    }
}
