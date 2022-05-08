package androidx.media2.exoplayer.external.drm;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.drm.ExoMediaDrm;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
import java.util.UUID;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/LocalMediaDrmCallback.class */
public final class LocalMediaDrmCallback implements MediaDrmCallback {
    public final byte[] keyResponse;

    public LocalMediaDrmCallback(byte[] bArr) {
        this.keyResponse = (byte[]) Assertions.checkNotNull(bArr);
    }

    @Override // androidx.media2.exoplayer.external.drm.MediaDrmCallback
    public byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) throws Exception {
        return this.keyResponse;
    }

    @Override // androidx.media2.exoplayer.external.drm.MediaDrmCallback
    public byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws IOException {
        throw new UnsupportedOperationException();
    }
}
