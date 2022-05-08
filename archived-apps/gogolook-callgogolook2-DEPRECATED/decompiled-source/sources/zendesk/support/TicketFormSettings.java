package zendesk.support;

import androidx.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/support/TicketFormSettings.class */
public class TicketFormSettings {
    public static TicketFormSettings DEFAULT = new TicketFormSettings(false);

    @VisibleForTesting
    public TicketFormSettings(boolean z) {
    }

    public static TicketFormSettings defaultSettings() {
        return DEFAULT;
    }
}
