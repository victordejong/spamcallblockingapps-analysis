package p012b.p076s.p078b.p079a.p111z0;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.z0.w */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/w.class */
public final class C1703w implements AbstractC1684g {

    /* renamed from: a */
    public final AbstractC1684g f6964a;

    /* renamed from: b */
    public long f6965b;

    /* renamed from: c */
    public Uri f6966c = Uri.EMPTY;

    /* renamed from: d */
    public Map<String, List<String>> f6967d = Collections.emptyMap();

    public C1703w(AbstractC1684g gVar) {
        C1160a.m34522a(gVar);
        this.f6964a = gVar;
    }

    /* renamed from: a */
    public long m32327a() {
        return this.f6965b;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws IOException {
        this.f6966c = iVar.f6883a;
        this.f6967d = Collections.emptyMap();
        long a = this.f6964a.mo32144a(iVar);
        Uri o = mo32142o();
        C1160a.m34522a(o);
        this.f6966c = o;
        this.f6967d = mo32322p();
        return a;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public void mo32326a(AbstractC1704x xVar) {
        this.f6964a.mo32326a(xVar);
    }

    /* renamed from: b */
    public Uri m32325b() {
        return this.f6966c;
    }

    /* renamed from: c */
    public Map<String, List<String>> m32324c() {
        return this.f6967d;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws IOException {
        this.f6964a.close();
    }

    /* renamed from: d */
    public void m32323d() {
        this.f6965b = 0L;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        return this.f6964a.mo32142o();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: p */
    public Map<String, List<String>> mo32322p() {
        return this.f6964a.mo32322p();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f6964a.read(bArr, i, i2);
        if (read != -1) {
            this.f6965b += read;
        }
        return read;
    }
}
