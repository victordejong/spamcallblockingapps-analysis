package p131c.p161d.p170b.p224d.p252g.p253a;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* renamed from: c.d.b.d.g.a.gc0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/gc0.class */
public final class gc0 extends ec0 {

    /* renamed from: j */
    public final AudioTimestamp f13153j = new AudioTimestamp();

    /* renamed from: k */
    public long f13154k;

    /* renamed from: l */
    public long f13155l;

    /* renamed from: m */
    public long f13156m;

    public gc0() {
        super(null);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ec0
    /* renamed from: a */
    public final void mo26968a(AudioTrack audioTrack, boolean z) {
        super.mo26968a(audioTrack, z);
        this.f13154k = 0L;
        this.f13155l = 0L;
        this.f13156m = 0L;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ec0
    /* renamed from: d */
    public final boolean mo26967d() {
        boolean timestamp = this.f12824a.getTimestamp(this.f13153j);
        if (timestamp) {
            long j = this.f13153j.framePosition;
            if (this.f13155l > j) {
                this.f13154k++;
            }
            this.f13155l = j;
            this.f13156m = j + (this.f13154k << 32);
        }
        return timestamp;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ec0
    /* renamed from: e */
    public final long mo26966e() {
        return this.f13153j.nanoTime;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ec0
    /* renamed from: f */
    public final long mo26965f() {
        return this.f13156m;
    }
}
