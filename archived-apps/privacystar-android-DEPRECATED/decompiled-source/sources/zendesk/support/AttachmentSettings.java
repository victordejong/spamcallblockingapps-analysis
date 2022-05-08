package zendesk.support;

import android.support.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/support/AttachmentSettings.class */
class AttachmentSettings {
    private static AttachmentSettings DEFAULT = new AttachmentSettings(false, 0);
    private boolean enabled;
    private long maxAttachmentSize;

    @VisibleForTesting
    AttachmentSettings() {
    }

    @VisibleForTesting
    AttachmentSettings(boolean z, long j) {
        this.enabled = z;
        this.maxAttachmentSize = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AttachmentSettings defaultSettings() {
        return DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getMaxAttachmentSize() {
        return this.maxAttachmentSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEnabled() {
        return this.enabled;
    }
}
