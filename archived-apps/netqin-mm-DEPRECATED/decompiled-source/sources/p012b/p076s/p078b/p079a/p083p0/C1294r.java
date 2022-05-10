package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.p0.r */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/r.class */
public final class C1294r extends AbstractC1293q {

    /* renamed from: h */
    public int[] f5146h;

    /* renamed from: i */
    public boolean f5147i;

    /* renamed from: j */
    public int[] f5148j;

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public void mo33753a(ByteBuffer byteBuffer) {
        int[] iArr = this.f5148j;
        C1160a.m34522a(iArr);
        int[] iArr2 = iArr;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer a = m33847a(((limit - position) / (this.f5141c * 2)) * iArr2.length * 2);
        while (position < limit) {
            for (int i : iArr2) {
                a.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f5141c * 2;
        }
        byteBuffer.position(limit);
        a.flip();
    }

    /* renamed from: a */
    public void m33844a(int[] iArr) {
        this.f5146h = iArr;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public boolean mo33754a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        boolean z = !Arrays.equals(this.f5146h, this.f5148j);
        int[] iArr = this.f5146h;
        this.f5148j = iArr;
        if (iArr == null) {
            this.f5147i = false;
            return z;
        } else if (i3 != 2) {
            throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
        } else if (!z && !m33846b(i, i2, i3)) {
            return false;
        } else {
            this.f5147i = i2 != iArr.length;
            int i4 = 0;
            while (i4 < iArr.length) {
                int i5 = iArr[i4];
                if (i5 < i2) {
                    this.f5147i = (i5 != i4) | this.f5147i;
                    i4++;
                } else {
                    throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
                }
            }
            return true;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo33752b() {
        return this.f5147i;
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: f */
    public int mo33758f() {
        int[] iArr = this.f5148j;
        return iArr == null ? this.f5141c : iArr.length;
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q
    /* renamed from: l */
    public void mo33748l() {
        this.f5148j = null;
        this.f5146h = null;
        this.f5147i = false;
    }
}
