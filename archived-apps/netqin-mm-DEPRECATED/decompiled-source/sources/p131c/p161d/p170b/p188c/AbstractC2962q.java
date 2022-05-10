package p131c.p161d.p170b.p188c;

import android.os.Looper;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2758z;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2896q;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p208u0.C3016d;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3023d;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3026f;
/* renamed from: c.d.b.c.q */
/* loaded from: classes-dex2jar.jar:c/d/b/c/q.class */
public abstract class AbstractC2962q implements AbstractC2953m0, AbstractC2957o0 {

    /* renamed from: a */
    public final int f10659a;

    /* renamed from: c */
    public C2961p0 f10661c;

    /* renamed from: d */
    public int f10662d;

    /* renamed from: e */
    public int f10663e;

    /* renamed from: f */
    public AbstractC2758z f10664f;

    /* renamed from: g */
    public Format[] f10665g;

    /* renamed from: h */
    public long f10666h;

    /* renamed from: j */
    public boolean f10668j;

    /* renamed from: k */
    public boolean f10669k;

    /* renamed from: b */
    public final C2692b0 f10660b = new C2692b0();

    /* renamed from: i */
    public long f10667i = Long.MIN_VALUE;

    public AbstractC2962q(int i) {
        this.f10659a = i;
    }

    /* renamed from: a */
    public static boolean m28377a(AbstractC3023d<?> dVar, DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (dVar == null) {
            return false;
        }
        return dVar.mo28109a(drmInitData);
    }

    /* renamed from: a */
    public final int m28379a(C2692b0 b0Var, C3016d dVar, boolean z) {
        int a = this.f10664f.mo29085a(b0Var, dVar, z);
        int i = -4;
        if (a == -4) {
            if (dVar.m28143d()) {
                this.f10667i = Long.MIN_VALUE;
                if (!this.f10668j) {
                    i = -3;
                }
                return i;
            }
            long j = dVar.f10904d + this.f10666h;
            dVar.f10904d = j;
            this.f10667i = Math.max(this.f10667i, j);
        } else if (a == -5) {
            Format format = b0Var.f9832c;
            long j2 = format.f21956m;
            if (j2 != Long.MAX_VALUE) {
                b0Var.f9832c = format.m18710a(j2 + this.f10666h);
            }
        }
        return a;
    }

    /* renamed from: a */
    public final ExoPlaybackException m28375a(Exception exc, Format format) {
        int i;
        if (format != null && !this.f10669k) {
            this.f10669k = true;
            try {
                i = C2955n0.m28394c(mo18580a(format));
            } catch (ExoPlaybackException e) {
            } finally {
                this.f10669k = false;
            }
            return ExoPlaybackException.createForRenderer(exc, m28360t(), format, i);
        }
        i = 4;
        return ExoPlaybackException.createForRenderer(exc, m28360t(), format, i);
    }

    /* renamed from: a */
    public final <T extends AbstractC3026f> DrmSession<T> m28376a(Format format, Format format2, AbstractC3023d<T> dVar, DrmSession<T> drmSession) throws ExoPlaybackException {
        DrmSession<T> drmSession2 = null;
        if (!(!C2885h0.m28669a(format2.f21955l, format == null ? null : format.f21955l))) {
            return drmSession;
        }
        if (format2.f21955l != null) {
            if (dVar != null) {
                Looper myLooper = Looper.myLooper();
                C2877e.m28737a(myLooper);
                drmSession2 = dVar.mo28110a(myLooper, format2.f21955l);
            } else {
                throw m28375a(new IllegalStateException("Media requires a DrmSessionManager"), format2);
            }
        }
        if (drmSession != null) {
            drmSession.mo18616a();
        }
        return drmSession2;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: a */
    public final void mo28382a() {
        C2877e.m28731b(this.f10663e == 0);
        this.f10660b.m29282a();
        mo18166x();
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: a */
    public final void mo28381a(int i) {
        this.f10662d = i;
    }

    @Override // p131c.p161d.p170b.p188c.C2949l0.AbstractC2951b
    /* renamed from: a */
    public void mo18219a(int i, Object obj) throws ExoPlaybackException {
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: a */
    public final void mo28380a(long j) throws ExoPlaybackException {
        this.f10668j = false;
        this.f10667i = j;
        mo18215a(j, false);
    }

    /* renamed from: a */
    public abstract void mo18215a(long j, boolean z) throws ExoPlaybackException;

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: a */
    public final void mo28378a(C2961p0 p0Var, Format[] formatArr, AbstractC2758z zVar, long j, boolean z, long j2) throws ExoPlaybackException {
        C2877e.m28731b(this.f10663e == 0);
        this.f10661c = p0Var;
        this.f10663e = 1;
        mo18191a(z);
        mo28374a(formatArr, zVar, j2);
        mo18215a(j, z);
    }

    /* renamed from: a */
    public abstract void mo18191a(boolean z) throws ExoPlaybackException;

    /* renamed from: a */
    public void mo18190a(Format[] formatArr, long j) throws ExoPlaybackException {
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: a */
    public final void mo28374a(Format[] formatArr, AbstractC2758z zVar, long j) throws ExoPlaybackException {
        C2877e.m28731b(!this.f10668j);
        this.f10664f = zVar;
        this.f10667i = j;
        this.f10665g = formatArr;
        this.f10666h = j;
        mo18190a(formatArr, j);
    }

    /* renamed from: b */
    public int m28373b(long j) {
        return this.f10664f.mo29086a(j - this.f10666h);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: d */
    public final int mo28372d() {
        return this.f10663e;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0, p131c.p161d.p170b.p188c.AbstractC2957o0
    /* renamed from: e */
    public final int mo28371e() {
        return this.f10659a;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: f */
    public final void mo28370f() {
        boolean z = true;
        if (this.f10663e != 1) {
            z = false;
        }
        C2877e.m28731b(z);
        this.f10660b.m29282a();
        this.f10663e = 0;
        this.f10664f = null;
        this.f10665g = null;
        this.f10668j = false;
        mo18167w();
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: h */
    public final AbstractC2758z mo28369h() {
        return this.f10664f;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: i */
    public final boolean mo28368i() {
        return this.f10667i == Long.MIN_VALUE;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: j */
    public final void mo28367j() {
        this.f10668j = true;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: k */
    public final AbstractC2957o0 mo28366k() {
        return this;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: n */
    public final void mo28365n() throws IOException {
        this.f10664f.mo29087a();
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: o */
    public final long mo28364o() {
        return this.f10667i;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: p */
    public final boolean mo28363p() {
        return this.f10668j;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: q */
    public AbstractC2896q mo28219q() {
        return null;
    }

    /* renamed from: r */
    public final C2961p0 m28362r() {
        return this.f10661c;
    }

    /* renamed from: s */
    public final C2692b0 m28361s() {
        this.f10660b.m29282a();
        return this.f10660b;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    public final void start() throws ExoPlaybackException {
        boolean z = true;
        if (this.f10663e != 1) {
            z = false;
        }
        C2877e.m28731b(z);
        this.f10663e = 2;
        mo18165y();
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    public final void stop() throws ExoPlaybackException {
        C2877e.m28731b(this.f10663e == 2);
        this.f10663e = 1;
        mo18164z();
    }

    /* renamed from: t */
    public final int m28360t() {
        return this.f10662d;
    }

    /* renamed from: u */
    public final Format[] m28359u() {
        return this.f10665g;
    }

    /* renamed from: v */
    public final boolean m28358v() {
        return mo28368i() ? this.f10668j : this.f10664f.mo29084b();
    }

    /* renamed from: w */
    public abstract void mo18167w();

    /* renamed from: x */
    public abstract void mo18166x();

    /* renamed from: y */
    public abstract void mo18165y() throws ExoPlaybackException;

    /* renamed from: z */
    public abstract void mo18164z() throws ExoPlaybackException;
}
