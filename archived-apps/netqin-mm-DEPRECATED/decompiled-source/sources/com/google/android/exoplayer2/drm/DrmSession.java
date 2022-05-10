package com.google.android.exoplayer2.drm;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3026f;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmSession.class */
public interface DrmSession<T extends AbstractC3026f> {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmSession$DrmSessionException.class */
    public static class DrmSessionException extends IOException {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: a */
    void mo18616a();

    /* renamed from: b */
    void mo18615b();

    /* renamed from: c */
    T mo18614c();

    /* renamed from: d */
    int mo18613d();

    /* renamed from: e */
    DrmSessionException mo18612e();

    /* renamed from: f */
    boolean mo18611f();
}
