package p131c.p161d.p170b.p188c.p199e1.p200o;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2878e0;
import p131c.p161d.p170b.p188c.p203g1.C2892m;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2925n;
import p131c.p161d.p170b.p188c.p204h1.p205r.AbstractC2932a;
import p131c.p161d.p170b.p188c.p204h1.p205r.C2933b;
import p131c.p161d.p170b.p188c.p204h1.p205r.C2934c;
import p131c.p161d.p170b.p188c.p204h1.p205r.C2937d;
/* renamed from: c.d.b.c.e1.o.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/e1/o/f.class */
public final class C2811f implements AbstractC2925n, AbstractC2932a {

    /* renamed from: i */
    public int f10228i;

    /* renamed from: j */
    public SurfaceTexture f10229j;

    /* renamed from: m */
    public byte[] f10232m;

    /* renamed from: a */
    public final AtomicBoolean f10220a = new AtomicBoolean();

    /* renamed from: b */
    public final AtomicBoolean f10221b = new AtomicBoolean(true);

    /* renamed from: c */
    public final C2809e f10222c = new C2809e();

    /* renamed from: d */
    public final C2933b f10223d = new C2933b();

    /* renamed from: e */
    public final C2878e0<Long> f10224e = new C2878e0<>();

    /* renamed from: f */
    public final C2878e0<C2934c> f10225f = new C2878e0<>();

    /* renamed from: g */
    public final float[] f10226g = new float[16];

    /* renamed from: h */
    public final float[] f10227h = new float[16];

    /* renamed from: k */
    public volatile int f10230k = 0;

    /* renamed from: l */
    public int f10231l = -1;

    /* renamed from: a */
    public SurfaceTexture m28979a() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        C2892m.m28615a();
        this.f10222c.m28987a();
        C2892m.m28615a();
        this.f10228i = C2892m.m28608b();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f10228i);
        this.f10229j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: c.d.b.c.e1.o.a
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                C2811f.this.m28977a(surfaceTexture2);
            }
        });
        return this.f10229j;
    }

    /* renamed from: a */
    public void m28978a(int i) {
        this.f10230k = i;
    }

    @Override // p131c.p161d.p170b.p188c.p204h1.AbstractC2925n
    /* renamed from: a */
    public void mo28491a(long j, long j2, Format format, MediaFormat mediaFormat) {
        this.f10224e.m28726a(j2, (long) Long.valueOf(j));
        m28976a(format.f21963t, format.f21962s, j2);
    }

    /* renamed from: a */
    public /* synthetic */ void m28977a(SurfaceTexture surfaceTexture) {
        this.f10220a.set(true);
    }

    /* renamed from: a */
    public final void m28976a(byte[] bArr, int i, long j) {
        byte[] bArr2 = this.f10232m;
        int i2 = this.f10231l;
        this.f10232m = bArr;
        int i3 = i;
        if (i == -1) {
            i3 = this.f10230k;
        }
        this.f10231l = i3;
        if (i2 != i3 || !Arrays.equals(bArr2, this.f10232m)) {
            C2934c cVar = null;
            byte[] bArr3 = this.f10232m;
            if (bArr3 != null) {
                cVar = C2937d.m28443a(bArr3, this.f10231l);
            }
            if (cVar == null || !C2809e.m28984b(cVar)) {
                cVar = C2934c.m28449a(this.f10231l);
            }
            this.f10225f.m28726a(j, (long) cVar);
        }
    }

    /* renamed from: a */
    public void m28975a(float[] fArr, boolean z) {
        GLES20.glClear(16384);
        C2892m.m28615a();
        if (this.f10220a.compareAndSet(true, false)) {
            SurfaceTexture surfaceTexture = this.f10229j;
            C2877e.m28737a(surfaceTexture);
            surfaceTexture.updateTexImage();
            C2892m.m28615a();
            if (this.f10221b.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f10226g, 0);
            }
            long timestamp = this.f10229j.getTimestamp();
            Long b = this.f10224e.m28723b(timestamp);
            if (b != null) {
                this.f10223d.m28453a(this.f10226g, b.longValue());
            }
            C2934c c = this.f10225f.m28721c(timestamp);
            if (c != null) {
                this.f10222c.m28985a(c);
            }
        }
        Matrix.multiplyMM(this.f10227h, 0, fArr, 0, this.f10226g, 0);
        this.f10222c.m28986a(this.f10228i, this.f10227h, z);
    }
}
