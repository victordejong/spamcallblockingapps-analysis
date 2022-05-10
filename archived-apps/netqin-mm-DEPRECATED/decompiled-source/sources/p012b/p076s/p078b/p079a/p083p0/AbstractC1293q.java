package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: b.s.b.a.p0.q */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/q.class */
public abstract class AbstractC1293q implements AudioProcessor {

    /* renamed from: e */
    public ByteBuffer f5143e;

    /* renamed from: f */
    public ByteBuffer f5144f;

    /* renamed from: g */
    public boolean f5145g;

    /* renamed from: c */
    public int f5141c = -1;

    /* renamed from: b */
    public int f5140b = -1;

    /* renamed from: d */
    public int f5142d = -1;

    public AbstractC1293q() {
        ByteBuffer byteBuffer = AudioProcessor.f1580a;
        this.f5143e = byteBuffer;
        this.f5144f = byteBuffer;
    }

    /* renamed from: a */
    public final ByteBuffer m33847a(int i) {
        if (this.f5143e.capacity() < i) {
            this.f5143e = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f5143e.clear();
        }
        ByteBuffer byteBuffer = this.f5143e;
        this.f5144f = byteBuffer;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final void mo33763a() {
        flush();
        this.f5143e = AudioProcessor.f1580a;
        this.f5140b = -1;
        this.f5141c = -1;
        this.f5142d = -1;
        mo33748l();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo33752b() {
        return this.f5140b != -1;
    }

    /* renamed from: b */
    public final boolean m33846b(int i, int i2, int i3) {
        if (i == this.f5140b && i2 == this.f5141c && i3 == this.f5142d) {
            return false;
        }
        this.f5140b = i;
        this.f5141c = i2;
        this.f5142d = i3;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo33751c() {
        return this.f5145g && this.f5144f == AudioProcessor.f1580a;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: d */
    public ByteBuffer mo33750d() {
        ByteBuffer byteBuffer = this.f5144f;
        this.f5144f = AudioProcessor.f1580a;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: e */
    public final void mo33759e() {
        this.f5145g = true;
        mo33787k();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: f */
    public int mo33758f() {
        return this.f5141c;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void flush() {
        this.f5144f = AudioProcessor.f1580a;
        this.f5145g = false;
        mo33749j();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: g */
    public int mo33757g() {
        return this.f5140b;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: h */
    public int mo33756h() {
        return this.f5142d;
    }

    /* renamed from: i */
    public final boolean m33845i() {
        return this.f5144f.hasRemaining();
    }

    /* renamed from: j */
    public void mo33749j() {
    }

    /* renamed from: k */
    public void mo33787k() {
    }

    /* renamed from: l */
    public void mo33748l() {
    }
}
