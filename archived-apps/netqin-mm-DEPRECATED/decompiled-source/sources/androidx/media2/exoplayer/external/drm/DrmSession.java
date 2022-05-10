package androidx.media2.exoplayer.external.drm;

import java.util.Map;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1329m;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession.class */
public interface DrmSession<T extends AbstractC1329m> {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException.class */
    public static class DrmSessionException extends Exception {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: c */
    T mo33690c();

    /* renamed from: d */
    int mo33689d();

    /* renamed from: e */
    DrmSessionException mo33688e();

    /* renamed from: f */
    Map<String, String> mo33687f();
}
