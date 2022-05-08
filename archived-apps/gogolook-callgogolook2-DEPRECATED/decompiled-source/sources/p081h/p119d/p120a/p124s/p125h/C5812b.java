package p081h.p119d.p120a.p124s.p125h;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import p081h.p119d.p120a.EnumC5779n;
/* renamed from: h.d.a.s.h.b */
/* loaded from: classes-dex2jar.jar:h/d/a/s/h/b.class */
public class C5812b implements AbstractC5813c<InputStream> {

    /* renamed from: a */
    public final byte[] f14659a;

    /* renamed from: b */
    public final String f14660b;

    public C5812b(byte[] bArr, String str) {
        this.f14659a = bArr;
        this.f14660b = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    /* renamed from: a */
    public InputStream mo24058a(EnumC5779n nVar) {
        return new ByteArrayInputStream(this.f14659a);
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    /* renamed from: a */
    public void mo24059a() {
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    public void cancel() {
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    public String getId() {
        return this.f14660b;
    }
}
