package p131c.p161d.p170b.p188c.p209v0;

import android.os.Looper;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.UnsupportedDrmException;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3026f;
/* renamed from: c.d.b.c.v0.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/v0/d.class */
public interface AbstractC3023d<T extends AbstractC3026f> {

    /* renamed from: a */
    public static final AbstractC3023d<AbstractC3026f> f10913a = new C3024a();

    /* renamed from: c.d.b.c.v0.d$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/v0/d$a.class */
    public static final class C3024a implements AbstractC3023d<AbstractC3026f> {
        @Override // p131c.p161d.p170b.p188c.p209v0.AbstractC3023d
        /* renamed from: a */
        public /* synthetic */ DrmSession<T> mo28111a(Looper looper, int i) {
            return C3022c.m28114a(this, looper, i);
        }

        @Override // p131c.p161d.p170b.p188c.p209v0.AbstractC3023d
        /* renamed from: a */
        public DrmSession<AbstractC3026f> mo28110a(Looper looper, DrmInitData drmInitData) {
            return new C3025e(new DrmSession.DrmSessionException(new UnsupportedDrmException(1)));
        }

        @Override // p131c.p161d.p170b.p188c.p209v0.AbstractC3023d
        /* renamed from: a */
        public /* synthetic */ void mo28112a() {
            C3022c.m28113b(this);
        }

        @Override // p131c.p161d.p170b.p188c.p209v0.AbstractC3023d
        /* renamed from: a */
        public boolean mo28109a(DrmInitData drmInitData) {
            return false;
        }

        @Override // p131c.p161d.p170b.p188c.p209v0.AbstractC3023d
        /* renamed from: b */
        public /* synthetic */ void mo28108b() {
            C3022c.m28115a(this);
        }
    }

    /* renamed from: a */
    DrmSession<T> mo28111a(Looper looper, int i);

    /* renamed from: a */
    DrmSession<T> mo28110a(Looper looper, DrmInitData drmInitData);

    /* renamed from: a */
    void mo28112a();

    /* renamed from: a */
    boolean mo28109a(DrmInitData drmInitData);

    /* renamed from: b */
    void mo28108b();
}
