package p012b.p076s.p078b.p079a.p102w0;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* renamed from: b.s.b.a.w0.o */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/o.class */
public final class C1629o implements AbstractC1684g {

    /* renamed from: a */
    public final AbstractC1684g f6750a;

    /* renamed from: b */
    public final int f6751b;

    /* renamed from: c */
    public final AbstractC1630a f6752c;

    /* renamed from: d */
    public final byte[] f6753d;

    /* renamed from: e */
    public int f6754e;

    /* renamed from: b.s.b.a.w0.o$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/o$a.class */
    public interface AbstractC1630a {
        /* renamed from: a */
        void mo32522a(C1184p pVar);
    }

    public C1629o(AbstractC1684g gVar, int i, AbstractC1630a aVar) {
        C1160a.m34520a(i > 0);
        this.f6750a = gVar;
        this.f6751b = i;
        this.f6752c = aVar;
        this.f6753d = new byte[1];
        this.f6754e = i;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public void mo32326a(AbstractC1704x xVar) {
        this.f6750a.mo32326a(xVar);
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
        r6.f6752c.mo32522a(new p012b.p076s.p078b.p079a.p080a1.C1184p(r0, r11));
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
    public final boolean m32523a() throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            b.s.b.a.z0.g r0 = r0.f6750a
            r1 = r6
            byte[] r1 = r1.f6753d
            r2 = 0
            r3 = 1
            int r0 = r0.read(r1, r2, r3)
            r1 = -1
            if (r0 != r1) goto L_0x0015
            r0 = 0
            return r0
        L_0x0015:
            r0 = r6
            byte[] r0 = r0.f6753d
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
            b.s.b.a.z0.g r0 = r0.f6750a
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
            b.s.b.a.w0.o$a r0 = r0.f6752c
            b.s.b.a.a1.p r1 = new b.s.b.a.a1.p
            r2 = r1
            r3 = r8
            r4 = r11
            r2.<init>(r3, r4)
            r0.mo32522a(r1)
        L_0x008a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1629o.m32523a():boolean");
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        return this.f6750a.mo32142o();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: p */
    public Map<String, List<String>> mo32322p() {
        return this.f6750a.mo32322p();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f6754e == 0) {
            if (!m32523a()) {
                return -1;
            }
            this.f6754e = this.f6751b;
        }
        int read = this.f6750a.read(bArr, i, Math.min(this.f6754e, i2));
        if (read != -1) {
            this.f6754e -= read;
        }
        return read;
    }
}
