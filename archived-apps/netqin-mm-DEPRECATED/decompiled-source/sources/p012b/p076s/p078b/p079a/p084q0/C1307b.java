package p012b.p076s.p078b.p079a.p084q0;

import android.media.MediaCodec;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.q0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/q0/b.class */
public final class C1307b {

    /* renamed from: a */
    public byte[] f5228a;

    /* renamed from: b */
    public int[] f5229b;

    /* renamed from: c */
    public int[] f5230c;

    /* renamed from: d */
    public final MediaCodec.CryptoInfo f5231d;

    /* renamed from: e */
    public final C1309b f5232e;

    /* renamed from: b.s.b.a.q0.b$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/q0/b$b.class */
    public static final class C1309b {

        /* renamed from: a */
        public final MediaCodec.CryptoInfo f5233a;

        /* renamed from: b */
        public final MediaCodec.CryptoInfo.Pattern f5234b;

        public C1309b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f5233a = cryptoInfo;
            this.f5234b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        /* renamed from: a */
        public final void m33737a(int i, int i2) {
            this.f5234b.set(i, i2);
            this.f5233a.setPattern(this.f5234b);
        }
    }

    public C1307b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f5231d = cryptoInfo;
        this.f5232e = C1167d0.f4688a >= 24 ? new C1309b(cryptoInfo) : null;
    }

    /* renamed from: a */
    public MediaCodec.CryptoInfo m33739a() {
        return this.f5231d;
    }

    /* renamed from: a */
    public void m33738a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.f5229b = iArr;
        this.f5230c = iArr2;
        this.f5228a = bArr2;
        MediaCodec.CryptoInfo cryptoInfo = this.f5231d;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (C1167d0.f4688a >= 24) {
            this.f5232e.m33737a(i3, i4);
        }
    }
}
