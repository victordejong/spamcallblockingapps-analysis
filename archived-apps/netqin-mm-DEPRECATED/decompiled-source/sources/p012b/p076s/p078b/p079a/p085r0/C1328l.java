package p012b.p076s.p078b.p079a.p085r0;

import androidx.media2.exoplayer.external.drm.DrmSession;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1329m;
/* renamed from: b.s.b.a.r0.l */
/* loaded from: classes-dex2jar.jar:b/s/b/a/r0/l.class */
public final class C1328l<T extends AbstractC1329m> implements DrmSession<T> {

    /* renamed from: a */
    public final DrmSession.DrmSessionException f5280a;

    public C1328l(DrmSession.DrmSessionException drmSessionException) {
        C1160a.m34522a(drmSessionException);
        this.f5280a = drmSessionException;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: c */
    public T mo33690c() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: d */
    public int mo33689d() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: e */
    public DrmSession.DrmSessionException mo33688e() {
        return this.f5280a;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: f */
    public Map<String, String> mo33687f() {
        return null;
    }
}
