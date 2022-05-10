package com.google.android.exoplayer2.drm;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException.class */
public final class DefaultDrmSession$UnexpectedDrmSessionException extends IOException {
    public DefaultDrmSession$UnexpectedDrmSessionException(Throwable th) {
        super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
    }
}
