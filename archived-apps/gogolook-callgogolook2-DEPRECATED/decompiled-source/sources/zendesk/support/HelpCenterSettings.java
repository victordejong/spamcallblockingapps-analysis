package zendesk.support;

import androidx.annotation.Nullable;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import zendesk.core.Settings;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterSettings.class */
public class HelpCenterSettings implements Settings {
    public static HelpCenterSettings DEFAULT = new HelpCenterSettings();
    @AbstractC10120c("help_center_article_voting_enabled")
    public boolean articleVotingEnabled;
    public boolean enabled;
    public String locale;

    public static HelpCenterSettings defaultSettings() {
        return DEFAULT;
    }

    @Nullable
    public String getLocale() {
        return this.locale;
    }

    public boolean isEnabled() {
        return this.enabled;
    }
}
