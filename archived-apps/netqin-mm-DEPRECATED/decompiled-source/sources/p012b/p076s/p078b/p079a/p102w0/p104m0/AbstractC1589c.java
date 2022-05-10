package p012b.p076s.p078b.p079a.p102w0.p104m0;

import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* renamed from: b.s.b.a.w0.m0.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/m0/c.class */
public abstract class AbstractC1589c extends AbstractC1588b {

    /* renamed from: i */
    public byte[] f6493i;

    /* renamed from: j */
    public volatile boolean f6494j;

    public AbstractC1589c(AbstractC1684g gVar, C1687i iVar, int i, Format format, int i2, Object obj, byte[] bArr) {
        super(gVar, iVar, i, format, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.f6493i = bArr;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0351e
    /* renamed from: a */
    public final void mo32334a() {
        this.f6494j = true;
    }

    /* renamed from: a */
    public final void m32723a(int i) {
        byte[] bArr = this.f6493i;
        if (bArr == null) {
            this.f6493i = new byte[16384];
        } else if (bArr.length < i + 16384) {
            this.f6493i = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    /* renamed from: a */
    public abstract void mo32722a(byte[] bArr, int i) throws IOException;

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0351e
    /* renamed from: b */
    public final void mo32333b() throws IOException, InterruptedException {
        try {
            this.f6492h.mo32144a(this.f6485a);
            int i = 0;
            int i2 = 0;
            while (i != -1 && !this.f6494j) {
                m32723a(i2);
                int read = this.f6492h.read(this.f6493i, i2, 16384);
                i = read;
                if (read != -1) {
                    i2 += read;
                    i = read;
                }
            }
            if (!this.f6494j) {
                mo32722a(this.f6493i, i2);
            }
            C1167d0.m34481a((AbstractC1684g) this.f6492h);
        } catch (Throwable th) {
            C1167d0.m34481a((AbstractC1684g) this.f6492h);
            throw th;
        }
    }

    /* renamed from: g */
    public byte[] m32721g() {
        return this.f6493i;
    }
}
