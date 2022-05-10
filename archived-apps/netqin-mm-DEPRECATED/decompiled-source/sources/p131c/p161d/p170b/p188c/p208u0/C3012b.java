package p131c.p161d.p170b.p188c.p208u0;

import android.media.MediaCodec;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.u0.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/u0/b.class */
public final class C3012b {

    /* renamed from: a */
    public byte[] f10886a;

    /* renamed from: b */
    public int[] f10887b;

    /* renamed from: c */
    public int[] f10888c;

    /* renamed from: d */
    public final MediaCodec.CryptoInfo f10889d;

    /* renamed from: e */
    public final C3014b f10890e;

    /* renamed from: c.d.b.c.u0.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/u0/b$b.class */
    public static final class C3014b {

        /* renamed from: a */
        public final MediaCodec.CryptoInfo f10891a;

        /* renamed from: b */
        public final MediaCodec.CryptoInfo.Pattern f10892b;

        public C3014b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f10891a = cryptoInfo;
            this.f10892b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        /* renamed from: a */
        public final void m28139a(int i, int i2) {
            this.f10892b.set(i, i2);
            this.f10891a.setPattern(this.f10892b);
        }
    }

    public C3012b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f10889d = cryptoInfo;
        this.f10890e = C2885h0.f10477a >= 24 ? new C3014b(cryptoInfo) : null;
    }

    /* renamed from: a */
    public MediaCodec.CryptoInfo m28141a() {
        return this.f10889d;
    }

    /* renamed from: a */
    public void m28140a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.f10887b = iArr;
        this.f10888c = iArr2;
        this.f10886a = bArr2;
        MediaCodec.CryptoInfo cryptoInfo = this.f10889d;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (C2885h0.f10477a >= 24) {
            this.f10890e.m28139a(i3, i4);
        }
    }
}
