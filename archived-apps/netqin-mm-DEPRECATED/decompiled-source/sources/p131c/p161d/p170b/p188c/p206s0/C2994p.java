package p131c.p161d.p170b.p188c.p206s0;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.s0.p */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/p.class */
public final class C2994p extends AbstractC2993o {

    /* renamed from: i */
    public int[] f10786i;

    /* renamed from: j */
    public int[] f10787j;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public void mo18691a(ByteBuffer byteBuffer) {
        int[] iArr = this.f10787j;
        C2877e.m28737a(iArr);
        int[] iArr2 = iArr;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer a = m28246a(((limit - position) / this.f10779b.f21975d) * this.f10780c.f21975d);
        while (position < limit) {
            for (int i : iArr2) {
                a.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f10779b.f21975d;
        }
        byteBuffer.position(limit);
        a.flip();
    }

    /* renamed from: a */
    public void m28244a(int[] iArr) {
        this.f10786i = iArr;
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: b */
    public AudioProcessor.C7122a mo28181b(AudioProcessor.C7122a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f10786i;
        if (iArr == null) {
            return AudioProcessor.C7122a.f21971e;
        }
        if (aVar.f21974c == 2) {
            boolean z = aVar.f21973b != iArr.length;
            int i = 0;
            while (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 < aVar.f21973b) {
                    z |= i2 != i;
                    i++;
                } else {
                    throw new AudioProcessor.UnhandledAudioFormatException(aVar);
                }
            }
            return z ? new AudioProcessor.C7122a(aVar.f21972a, iArr.length, 2) : AudioProcessor.C7122a.f21971e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: g */
    public void mo28180g() {
        this.f10787j = this.f10786i;
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: i */
    public void mo28178i() {
        this.f10787j = null;
        this.f10786i = null;
    }
}
