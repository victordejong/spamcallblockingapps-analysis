package p131c.p161d.p170b.p188c.p201f1;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.f1.s */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/s.class */
public final class C2840s implements AbstractC2827j {

    /* renamed from: a */
    public final AbstractC2827j f10334a;

    /* renamed from: b */
    public final AbstractC2825h f10335b;

    /* renamed from: c */
    public boolean f10336c;

    /* renamed from: d */
    public long f10337d;

    public C2840s(AbstractC2827j jVar, AbstractC2825h hVar) {
        C2877e.m28737a(jVar);
        this.f10334a = jVar;
        C2877e.m28737a(hVar);
        this.f10335b = hVar;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public long mo18288a(C2829k kVar) throws IOException {
        long a = this.f10334a.mo18288a(kVar);
        this.f10337d = a;
        if (a == 0) {
            return 0L;
        }
        C2829k kVar2 = kVar;
        if (kVar.f10271g == -1) {
            kVar2 = kVar;
            if (a != -1) {
                kVar2 = kVar.m28935a(0L, a);
            }
        }
        this.f10336c = true;
        this.f10335b.mo18245a(kVar2);
        return this.f10337d;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public void mo28885a(AbstractC2841t tVar) {
        this.f10334a.mo28885a(tVar);
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public void close() throws IOException {
        try {
            this.f10334a.close();
            if (this.f10336c) {
                this.f10336c = false;
                this.f10335b.close();
            }
        } catch (Throwable th) {
            if (this.f10336c) {
                this.f10336c = false;
                this.f10335b.close();
            }
            throw th;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: o */
    public Uri mo18287o() {
        return this.f10334a.mo18287o();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: p */
    public Map<String, List<String>> mo28874p() {
        return this.f10334a.mo28874p();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f10337d == 0) {
            return -1;
        }
        int read = this.f10334a.read(bArr, i, i2);
        if (read > 0) {
            this.f10335b.write(bArr, i, read);
            long j = this.f10337d;
            if (j != -1) {
                this.f10337d = j - read;
            }
        }
        return read;
    }
}
