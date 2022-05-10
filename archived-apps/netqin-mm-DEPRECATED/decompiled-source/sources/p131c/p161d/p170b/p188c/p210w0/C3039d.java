package p131c.p161d.p170b.p188c.p210w0;

import com.google.common.collect.MapMakerInternalMap;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.w0.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/d.class */
public final class C3039d implements AbstractC3043h {

    /* renamed from: b */
    public final AbstractC2827j f10955b;

    /* renamed from: c */
    public final long f10956c;

    /* renamed from: d */
    public long f10957d;

    /* renamed from: f */
    public int f10959f;

    /* renamed from: g */
    public int f10960g;

    /* renamed from: e */
    public byte[] f10958e = new byte[MapMakerInternalMap.MAX_SEGMENTS];

    /* renamed from: a */
    public final byte[] f10954a = new byte[4096];

    public C3039d(AbstractC2827j jVar, long j, long j2) {
        this.f10955b = jVar;
        this.f10957d = j;
        this.f10956c = j2;
    }

    /* renamed from: a */
    public final int m28065a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int read = this.f10955b.read(bArr, i + i3, i2 - i3);
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

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: a */
    public long mo28058a() {
        return this.f10956c;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: a */
    public void mo28057a(int i) throws IOException, InterruptedException {
        mo28056a(i, false);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: a */
    public void mo28055a(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        mo28051b(bArr, i, i2, false);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: a */
    public boolean mo28056a(int i, boolean z) throws IOException, InterruptedException {
        m28061e(i);
        int i2 = this.f10960g - this.f10959f;
        while (i2 < i) {
            i2 = m28065a(this.f10958e, this.f10959f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f10960g = this.f10959f + i2;
        }
        this.f10959f += i;
        return true;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: a */
    public boolean mo28054a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int b = m28063b(bArr, i, i2);
        while (b < i2 && b != -1) {
            b = m28065a(bArr, i, i2, b, z);
        }
        m28062d(b);
        return b != -1;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: b */
    public int mo28052b(int i) throws IOException, InterruptedException {
        int f = m28060f(i);
        int i2 = f;
        if (f == 0) {
            byte[] bArr = this.f10954a;
            i2 = m28065a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m28062d(i2);
        return i2;
    }

    /* renamed from: b */
    public final int m28063b(byte[] bArr, int i, int i2) {
        int i3 = this.f10960g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f10958e, 0, bArr, i, min);
        m28059g(min);
        return min;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: b */
    public long mo28053b() {
        return this.f10957d + this.f10959f;
    }

    /* renamed from: b */
    public boolean m28064b(int i, boolean z) throws IOException, InterruptedException {
        int f = m28060f(i);
        while (f < i && f != -1) {
            f = m28065a(this.f10954a, -f, Math.min(i, this.f10954a.length + f), f, z);
        }
        m28062d(f);
        return f != -1;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: b */
    public boolean mo28051b(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!mo28056a(i2, z)) {
            return false;
        }
        System.arraycopy(this.f10958e, this.f10959f - i2, bArr, i, i2);
        return true;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: c */
    public void mo28050c() {
        this.f10959f = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    /* renamed from: c */
    public void mo28049c(int i) throws IOException, InterruptedException {
        m28064b(i, false);
    }

    /* renamed from: d */
    public final void m28062d(int i) {
        if (i != -1) {
            this.f10957d += i;
        }
    }

    /* renamed from: e */
    public final void m28061e(int i) {
        int i2 = this.f10959f + i;
        byte[] bArr = this.f10958e;
        if (i2 > bArr.length) {
            this.f10958e = Arrays.copyOf(this.f10958e, C2885h0.m28685a(bArr.length * 2, MapMakerInternalMap.MAX_SEGMENTS + i2, i2 + 524288));
        }
    }

    /* renamed from: f */
    public final int m28060f(int i) {
        int min = Math.min(this.f10960g, i);
        m28059g(min);
        return min;
    }

    /* renamed from: g */
    public final void m28059g(int i) {
        int i2 = this.f10960g - i;
        this.f10960g = i2;
        this.f10959f = 0;
        byte[] bArr = this.f10958e;
        byte[] bArr2 = bArr;
        if (i2 < bArr.length - 524288) {
            bArr2 = new byte[i2 + MapMakerInternalMap.MAX_SEGMENTS];
        }
        System.arraycopy(this.f10958e, i, bArr2, 0, this.f10960g);
        this.f10958e = bArr2;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    public long getPosition() {
        return this.f10957d;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    public int read(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int b = m28063b(bArr, i, i2);
        int i3 = b;
        if (b == 0) {
            i3 = m28065a(bArr, i, i2, 0, true);
        }
        m28062d(i3);
        return i3;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3043h
    public void readFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        mo28054a(bArr, i, i2, false);
    }
}
