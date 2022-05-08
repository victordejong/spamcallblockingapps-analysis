package androidx.media2.exoplayer.external.drm;

import androidx.annotation.RestrictTo;
import java.util.UUID;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/FrameworkMediaCrypto.class */
public final class FrameworkMediaCrypto implements ExoMediaCrypto {
    public final boolean forceAllowInsecureDecoderComponents;
    public final byte[] sessionId;
    public final UUID uuid;

    public FrameworkMediaCrypto(UUID uuid, byte[] bArr, boolean z) {
        this.uuid = uuid;
        this.sessionId = bArr;
        this.forceAllowInsecureDecoderComponents = z;
    }
}
