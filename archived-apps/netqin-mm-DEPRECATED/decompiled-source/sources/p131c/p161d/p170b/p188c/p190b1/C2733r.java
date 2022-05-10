package p131c.p161d.p170b.p188c.p190b1;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2841t;
import p131c.p161d.p170b.p188c.p201f1.C2829k;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.b1.r */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/r.class */
public final class C2733r implements AbstractC2827j {

    /* renamed from: a */
    public final AbstractC2827j f9924a;

    /* renamed from: b */
    public final int f9925b;

    /* renamed from: c */
    public final AbstractC2734a f9926c;

    /* renamed from: d */
    public final byte[] f9927d;

    /* renamed from: e */
    public int f9928e;

    /* renamed from: c.d.b.c.b1.r$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/r$a.class */
    public interface AbstractC2734a {
        /* renamed from: a */
        void mo29159a(C2904v vVar);
    }

    public C2733r(AbstractC2827j jVar, int i, AbstractC2734a aVar) {
        C2877e.m28734a(i > 0);
        this.f9924a = jVar;
        this.f9925b = i;
        this.f9926c = aVar;
        this.f9927d = new byte[1];
        this.f9928e = i;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public long mo18288a(C2829k kVar) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public void mo28885a(AbstractC2841t tVar) {
        this.f9924a.mo28885a(tVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        if (r11 <= 0) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r0[r11 - 1] != 0) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
        r11 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
        if (r11 <= 0) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0077, code lost:
        r6.f9926c.mo29159a(new p131c.p161d.p170b.p188c.p203g1.C2904v(r0, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008a, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        return true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m29252a() throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            c.d.b.c.f1.j r0 = r0.f9924a
            r1 = r6
            byte[] r1 = r1.f9927d
            r2 = 0
            r3 = 1
            int r0 = r0.read(r1, r2, r3)
            r1 = -1
            if (r0 != r1) goto L_0x0015
            r0 = 0
            return r0
        L_0x0015:
            r0 = r6
            byte[] r0 = r0.f9927d
            r1 = 0
            r0 = r0[r1]
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r1 = 4
            int r0 = r0 << r1
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0028
            r0 = 1
            return r0
        L_0x0028:
            r0 = r7
            byte[] r0 = new byte[r0]
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0031:
            r0 = r7
            r11 = r0
            r0 = r9
            if (r0 <= 0) goto L_0x005e
            r0 = r6
            c.d.b.c.f1.j r0 = r0.f9924a
            r1 = r8
            r2 = r10
            r3 = r9
            int r0 = r0.read(r1, r2, r3)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x004f
            r0 = 0
            return r0
        L_0x004f:
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = r11
            int r0 = r0 - r1
            r9 = r0
            goto L_0x0031
        L_0x005e:
            r0 = r11
            if (r0 <= 0) goto L_0x0072
            r0 = r8
            r1 = r11
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0072
            int r11 = r11 + (-1)
            goto L_0x005e
        L_0x0072:
            r0 = r11
            if (r0 <= 0) goto L_0x008a
            r0 = r6
            c.d.b.c.b1.r$a r0 = r0.f9926c
            c.d.b.c.g1.v r1 = new c.d.b.c.g1.v
            r2 = r1
            r3 = r8
            r4 = r11
            r2.<init>(r3, r4)
            r0.mo29159a(r1)
        L_0x008a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2733r.m29252a():boolean");
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public void close() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: o */
    public Uri mo18287o() {
        return this.f9924a.mo18287o();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: p */
    public Map<String, List<String>> mo28874p() {
        return this.f9924a.mo28874p();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f9928e == 0) {
            if (!m29252a()) {
                return -1;
            }
            this.f9928e = this.f9925b;
        }
        int read = this.f9924a.read(bArr, i, Math.min(this.f9928e, i2));
        if (read != -1) {
            this.f9928e -= read;
        }
        return read;
    }
}
