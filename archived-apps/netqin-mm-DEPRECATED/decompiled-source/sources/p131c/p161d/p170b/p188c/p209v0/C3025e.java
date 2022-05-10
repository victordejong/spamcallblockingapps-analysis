package p131c.p161d.p170b.p188c.p209v0;

import com.google.android.exoplayer2.drm.DrmSession;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3026f;
/* renamed from: c.d.b.c.v0.e */
/* loaded from: classes-dex2jar.jar:c/d/b/c/v0/e.class */
public final class C3025e<T extends AbstractC3026f> implements DrmSession<T> {

    /* renamed from: a */
    public final DrmSession.DrmSessionException f10914a;

    public C3025e(DrmSession.DrmSessionException drmSessionException) {
        C2877e.m28737a(drmSessionException);
        this.f10914a = drmSessionException;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: a */
    public void mo18616a() {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: b */
    public void mo18615b() {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: c */
    public T mo18614c() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: d */
    public int mo18613d() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: e */
    public DrmSession.DrmSessionException mo18612e() {
        return this.f10914a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: f */
    public boolean mo18611f() {
        return false;
    }
}
