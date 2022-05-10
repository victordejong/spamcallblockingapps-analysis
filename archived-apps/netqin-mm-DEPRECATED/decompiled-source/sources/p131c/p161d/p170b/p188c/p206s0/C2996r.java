package p131c.p161d.p170b.p188c.p206s0;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.s0.r */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/r.class */
public final class C2996r extends AbstractC2993o {

    /* renamed from: i */
    public static final int f10791i = Float.floatToIntBits(Float.NaN);

    /* renamed from: a */
    public static void m28236a(int i, ByteBuffer byteBuffer) {
        double d = i;
        Double.isNaN(d);
        int floatToIntBits = Float.floatToIntBits((float) (d * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == f10791i) {
            i2 = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(i2);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public void mo18691a(ByteBuffer byteBuffer) {
        C2877e.m28731b(C2885h0.m28632e(this.f10779b.f21974c));
        boolean z = this.f10779b.f21974c == 1073741824;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (!z) {
            i = (i / 3) * 4;
        }
        ByteBuffer a = m28246a(i);
        if (z) {
            while (position < limit) {
                m28236a((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), a);
                position += 4;
            }
        } else {
            for (int i2 = position; i2 < limit; i2 += 3) {
                m28236a(((byteBuffer.get(i2) & 255) << 8) | ((byteBuffer.get(i2 + 1) & 255) << 16) | ((byteBuffer.get(i2 + 2) & 255) << 24), a);
            }
        }
        byteBuffer.position(byteBuffer.limit());
        a.flip();
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: b */
    public AudioProcessor.C7122a mo28181b(AudioProcessor.C7122a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (C2885h0.m28632e(aVar.f21974c)) {
            return C2885h0.m28632e(aVar.f21974c) ? new AudioProcessor.C7122a(aVar.f21972a, aVar.f21973b, 4) : AudioProcessor.C7122a.f21971e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }
}
