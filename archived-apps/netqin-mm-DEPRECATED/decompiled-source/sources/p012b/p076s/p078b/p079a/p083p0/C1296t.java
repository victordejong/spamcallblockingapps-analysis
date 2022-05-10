package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import java.nio.ByteBuffer;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.p0.t */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/t.class */
public final class C1296t extends AbstractC1293q {

    /* renamed from: h */
    public static final int f5152h = Float.floatToIntBits(Float.NaN);

    /* renamed from: a */
    public static void m33836a(int i, ByteBuffer byteBuffer) {
        double d = i;
        Double.isNaN(d);
        int floatToIntBits = Float.floatToIntBits((float) (d * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == f5152h) {
            i2 = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(i2);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public void mo33753a(ByteBuffer byteBuffer) {
        boolean z = this.f5142d == 1073741824;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (!z) {
            i = (i / 3) * 4;
        }
        ByteBuffer a = m33847a(i);
        if (z) {
            while (position < limit) {
                m33836a((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), a);
                position += 4;
            }
        } else {
            for (int i2 = position; i2 < limit; i2 += 3) {
                m33836a(((byteBuffer.get(i2) & 255) << 8) | ((byteBuffer.get(i2 + 1) & 255) << 16) | ((byteBuffer.get(i2 + 2) & 255) << 24), a);
            }
        }
        byteBuffer.position(byteBuffer.limit());
        a.flip();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public boolean mo33754a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (C1167d0.m34440e(i3)) {
            return m33846b(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo33752b() {
        return C1167d0.m34440e(this.f5142d);
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: h */
    public int mo33756h() {
        return 4;
    }
}
