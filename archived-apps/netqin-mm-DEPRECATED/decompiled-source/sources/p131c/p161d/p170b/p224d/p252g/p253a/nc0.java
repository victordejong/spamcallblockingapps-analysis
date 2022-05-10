package p131c.p161d.p170b.p224d.p252g.p253a;

import android.media.MediaCodec;
/* renamed from: c.d.b.d.g.a.nc0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/nc0.class */
public final class nc0 {

    /* renamed from: a */
    public final MediaCodec.CryptoInfo f14234a;

    /* renamed from: b */
    public final MediaCodec.CryptoInfo.Pattern f14235b;

    public nc0(MediaCodec.CryptoInfo cryptoInfo) {
        this.f14234a = cryptoInfo;
        this.f14235b = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    /* renamed from: a */
    public final void m26619a(int i, int i2) {
        this.f14235b.set(i, i2);
        this.f14234a.setPattern(this.f14235b);
    }
}
