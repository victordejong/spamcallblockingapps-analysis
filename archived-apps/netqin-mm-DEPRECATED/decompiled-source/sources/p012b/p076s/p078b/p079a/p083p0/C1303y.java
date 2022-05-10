package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.p0.y */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/y.class */
public final class C1303y implements AudioProcessor {

    /* renamed from: h */
    public boolean f5209h;

    /* renamed from: i */
    public C1302x f5210i;

    /* renamed from: j */
    public ByteBuffer f5211j;

    /* renamed from: k */
    public ShortBuffer f5212k;

    /* renamed from: m */
    public long f5214m;

    /* renamed from: n */
    public long f5215n;

    /* renamed from: o */
    public boolean f5216o;

    /* renamed from: d */
    public float f5205d = 1.0f;

    /* renamed from: e */
    public float f5206e = 1.0f;

    /* renamed from: b */
    public int f5203b = -1;

    /* renamed from: c */
    public int f5204c = -1;

    /* renamed from: f */
    public int f5207f = -1;

    /* renamed from: l */
    public ByteBuffer f5213l = AudioProcessor.f1580a;

    /* renamed from: g */
    public int f5208g = -1;

    public C1303y() {
        ByteBuffer byteBuffer = AudioProcessor.f1580a;
        this.f5211j = byteBuffer;
        this.f5212k = byteBuffer.asShortBuffer();
    }

    /* renamed from: a */
    public float m33762a(float f) {
        float a = C1167d0.m34496a(f, 0.1f, 8.0f);
        if (this.f5206e != a) {
            this.f5206e = a;
            this.f5209h = true;
        }
        flush();
        return a;
    }

    /* renamed from: a */
    public long m33761a(long j) {
        long j2 = this.f5215n;
        if (j2 >= 1024) {
            int i = this.f5207f;
            int i2 = this.f5204c;
            return i == i2 ? C1167d0.m34445c(j, this.f5214m, j2) : C1167d0.m34445c(j, this.f5214m * i, j2 * i2);
        }
        double d = this.f5205d;
        double d2 = j;
        Double.isNaN(d);
        Double.isNaN(d2);
        return (long) (d * d2);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public void mo33763a() {
        this.f5205d = 1.0f;
        this.f5206e = 1.0f;
        this.f5203b = -1;
        this.f5204c = -1;
        this.f5207f = -1;
        ByteBuffer byteBuffer = AudioProcessor.f1580a;
        this.f5211j = byteBuffer;
        this.f5212k = byteBuffer.asShortBuffer();
        this.f5213l = AudioProcessor.f1580a;
        this.f5208g = -1;
        this.f5209h = false;
        this.f5210i = null;
        this.f5214m = 0L;
        this.f5215n = 0L;
        this.f5216o = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public void mo33753a(ByteBuffer byteBuffer) {
        C1302x xVar = this.f5210i;
        C1160a.m34522a(xVar);
        C1302x xVar2 = xVar;
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f5214m += remaining;
            xVar2.m33772b(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int b = xVar2.m33774b() * this.f5203b * 2;
        if (b > 0) {
            if (this.f5211j.capacity() < b) {
                ByteBuffer order = ByteBuffer.allocateDirect(b).order(ByteOrder.nativeOrder());
                this.f5211j = order;
                this.f5212k = order.asShortBuffer();
            } else {
                this.f5211j.clear();
                this.f5212k.clear();
            }
            xVar2.m33779a(this.f5212k);
            this.f5215n += b;
            this.f5211j.limit(b);
            this.f5213l = this.f5211j;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public boolean mo33754a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 2) {
            int i4 = this.f5208g;
            int i5 = i4;
            if (i4 == -1) {
                i5 = i;
            }
            if (this.f5204c == i && this.f5203b == i2 && this.f5207f == i5) {
                return false;
            }
            this.f5204c = i;
            this.f5203b = i2;
            this.f5207f = i5;
            this.f5209h = true;
            return true;
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    /* renamed from: b */
    public float m33760b(float f) {
        float a = C1167d0.m34496a(f, 0.1f, 8.0f);
        if (this.f5205d != a) {
            this.f5205d = a;
            this.f5209h = true;
        }
        flush();
        return a;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo33752b() {
        return this.f5204c != -1 && (Math.abs(this.f5205d - 1.0f) >= 0.01f || Math.abs(this.f5206e - 1.0f) >= 0.01f || this.f5207f != this.f5204c);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo33751c() {
        C1302x xVar;
        return this.f5216o && ((xVar = this.f5210i) == null || xVar.m33774b() == 0);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: d */
    public ByteBuffer mo33750d() {
        ByteBuffer byteBuffer = this.f5213l;
        this.f5213l = AudioProcessor.f1580a;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: e */
    public void mo33759e() {
        C1302x xVar = this.f5210i;
        if (xVar != null) {
            xVar.m33765d();
        }
        this.f5216o = true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: f */
    public int mo33758f() {
        return this.f5203b;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public void flush() {
        if (mo33752b()) {
            if (this.f5209h) {
                this.f5210i = new C1302x(this.f5204c, this.f5203b, this.f5205d, this.f5206e, this.f5207f);
            } else {
                C1302x xVar = this.f5210i;
                if (xVar != null) {
                    xVar.m33785a();
                }
            }
        }
        this.f5213l = AudioProcessor.f1580a;
        this.f5214m = 0L;
        this.f5215n = 0L;
        this.f5216o = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: g */
    public int mo33757g() {
        return this.f5207f;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: h */
    public int mo33756h() {
        return 2;
    }
}
