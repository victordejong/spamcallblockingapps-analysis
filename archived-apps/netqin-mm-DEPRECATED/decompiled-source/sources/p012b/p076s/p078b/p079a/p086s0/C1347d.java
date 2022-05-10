package p012b.p076s.p078b.p079a.p086s0;

import com.google.common.collect.MapMakerInternalMap;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
/* renamed from: b.s.b.a.s0.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/d.class */
public final class C1347d implements AbstractC1351h {

    /* renamed from: b */
    public final AbstractC1684g f5321b;

    /* renamed from: c */
    public final long f5322c;

    /* renamed from: d */
    public long f5323d;

    /* renamed from: f */
    public int f5325f;

    /* renamed from: g */
    public int f5326g;

    /* renamed from: e */
    public byte[] f5324e = new byte[MapMakerInternalMap.MAX_SEGMENTS];

    /* renamed from: a */
    public final byte[] f5320a = new byte[4096];

    public C1347d(AbstractC1684g gVar, long j, long j2) {
        this.f5321b = gVar;
        this.f5323d = j;
        this.f5322c = j2;
    }

    /* renamed from: a */
    public final int m33630a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int read = this.f5321b.read(bArr, i + i3, i2 - i3);
            if (read != -1) {
                return i3 + read;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: a */
    public long mo33622a() {
        return this.f5322c;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: a */
    public void mo33621a(int i) throws IOException, InterruptedException {
        mo33620a(i, false);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: a */
    public void mo33619a(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        mo33615b(bArr, i, i2, false);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: a */
    public boolean mo33620a(int i, boolean z) throws IOException, InterruptedException {
        m33626e(i);
        int i2 = this.f5326g - this.f5325f;
        while (i2 < i) {
            i2 = m33630a(this.f5324e, this.f5325f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f5326g = this.f5325f + i2;
        }
        this.f5325f += i;
        return true;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: a */
    public boolean mo33618a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int b = m33628b(bArr, i, i2);
        while (b < i2 && b != -1) {
            b = m33630a(bArr, i, i2, b, z);
        }
        m33627d(b);
        return b != -1;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: b */
    public int mo33616b(int i) throws IOException, InterruptedException {
        int f = m33625f(i);
        int i2 = f;
        if (f == 0) {
            byte[] bArr = this.f5320a;
            i2 = m33630a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m33627d(i2);
        return i2;
    }

    /* renamed from: b */
    public final int m33628b(byte[] bArr, int i, int i2) {
        int i3 = this.f5326g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f5324e, 0, bArr, i, min);
        m33624g(min);
        return min;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: b */
    public long mo33617b() {
        return this.f5323d + this.f5325f;
    }

    /* renamed from: b */
    public boolean m33629b(int i, boolean z) throws IOException, InterruptedException {
        int f = m33625f(i);
        while (f < i && f != -1) {
            f = m33630a(this.f5320a, -f, Math.min(i, this.f5320a.length + f), f, z);
        }
        m33627d(f);
        return f != -1;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: b */
    public boolean mo33615b(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!mo33620a(i2, z)) {
            return false;
        }
        System.arraycopy(this.f5324e, this.f5325f - i2, bArr, i, i2);
        return true;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: c */
    public void mo33614c() {
        this.f5325f = 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    /* renamed from: c */
    public void mo33613c(int i) throws IOException, InterruptedException {
        m33629b(i, false);
    }

    /* renamed from: d */
    public final void m33627d(int i) {
        if (i != -1) {
            this.f5323d += i;
        }
    }

    /* renamed from: e */
    public final void m33626e(int i) {
        int i2 = this.f5325f + i;
        byte[] bArr = this.f5324e;
        if (i2 > bArr.length) {
            this.f5324e = Arrays.copyOf(this.f5324e, C1167d0.m34493a(bArr.length * 2, MapMakerInternalMap.MAX_SEGMENTS + i2, i2 + 524288));
        }
    }

    /* renamed from: f */
    public final int m33625f(int i) {
        int min = Math.min(this.f5326g, i);
        m33624g(min);
        return min;
    }

    /* renamed from: g */
    public final void m33624g(int i) {
        int i2 = this.f5326g - i;
        this.f5326g = i2;
        this.f5325f = 0;
        byte[] bArr = this.f5324e;
        byte[] bArr2 = bArr;
        if (i2 < bArr.length - 524288) {
            bArr2 = new byte[i2 + MapMakerInternalMap.MAX_SEGMENTS];
        }
        System.arraycopy(this.f5324e, i, bArr2, 0, this.f5326g);
        this.f5324e = bArr2;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    public long getPosition() {
        return this.f5323d;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    public int read(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int b = m33628b(bArr, i, i2);
        int i3 = b;
        if (b == 0) {
            i3 = m33630a(bArr, i, i2, 0, true);
        }
        m33627d(i3);
        return i3;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1351h
    public void readFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        mo33618a(bArr, i, i2, false);
    }
}
