package zendesk.support;

import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import java.util.Locale;
import zendesk.core.AuthenticationType;
import zendesk.core.SettingsPack;
import zendesk.core.SettingsProvider;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskSupportSettingsProvider.class */
public class ZendeskSupportSettingsProvider implements SupportSettingsProvider {
    private static final String HELP_CENTER_KEY = "help_center";
    private static final String LOG_TAG = "ZendeskSettingsProvider";
    private static final String SUPPORT_KEY = "support";
    private final Locale deviceLocale;
    private final HelpCenterLocaleConverter localeConverter;
    private final SettingsProvider sdkSettingsProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings.class */
    public class LoadHelpCenterSettings extends ZendeskCallback<SettingsPack<HelpCenterSettings>> {
        private final ZendeskCallback<SupportSdkSettings> callback;
        private final SettingsPack<SupportSettings> supportSettingsPack;

        LoadHelpCenterSettings(ZendeskCallback<SupportSdkSettings> zendeskCallback, SettingsPack<SupportSettings> settingsPack) {
            this.callback = zendeskCallback;
            this.supportSettingsPack = settingsPack;
        }

        @Override // com.zendesk.service.ZendeskCallback
        public void onError(ErrorResponse errorResponse) {
            if (this.callback != null) {
                Logger.m298d(ZendeskSupportSettingsProvider.LOG_TAG, "Returning default Help Center Settings.", new Object[0]);
                this.callback.onSuccess(new SupportSdkSettings(this.supportSettingsPack.getSettings(), HelpCenterSettings.defaultSettings(), this.supportSettingsPack.getCoreSettings().getAuthentication()));
            }
        }

        public void onSuccess(SettingsPack<HelpCenterSettings> settingsPack) {
            HelpCenterSettings settings = settingsPack.getSettings();
            AuthenticationType authentication = settingsPack.getCoreSettings().getAuthentication();
            ZendeskSupportSettingsProvider.this.logIfLocaleNotAvailable(settings);
            Logger.m298d(ZendeskSupportSettingsProvider.LOG_TAG, "Successfully retrieved Settings", new Object[0]);
            if (this.callback != null) {
                this.callback.onSuccess(new SupportSdkSettings(this.supportSettingsPack.getSettings(), settings, authentication));
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings.class */
    class LoadSupportSettings extends ZendeskCallback<SettingsPack<SupportSettings>> {
        private final ZendeskCallback<SupportSdkSettings> callback;

        LoadSupportSettings(ZendeskCallback<SupportSdkSettings> zendeskCallback) {
            this.callback = zendeskCallback;
        }

        @Override // com.zendesk.service.ZendeskCallback
        public void onError(ErrorResponse errorResponse) {
            if (this.callback != null) {
                Logger.m298d(ZendeskSupportSettingsProvider.LOG_TAG, "Returning default Support Settings.", new Object[0]);
                this.callback.onSuccess(new SupportSdkSettings(SupportSettings.defaultSettings(), HelpCenterSettings.defaultSettings(), null));
            }
        }

        public void onSuccess(SettingsPack<SupportSettings> settingsPack) {
            ZendeskSupportSettingsProvider.this.sdkSettingsProvider.getSettingsForSdk(ZendeskSupportSettingsProvider.HELP_CENTER_KEY, HelpCenterSettings.class, new LoadHelpCenterSettings(this.callback, settingsPack));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskSupportSettingsProvider(SettingsProvider settingsProvider, HelpCenterLocaleConverter helpCenterLocaleConverter, Locale locale) {
        this.sdkSettingsProvider = settingsProvider;
        this.localeConverter = helpCenterLocaleConverter;
        this.deviceLocale = locale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logIfLocaleNotAvailable(HelpCenterSettings helpCenterSettings) {
        String helpCenterLocaleString = this.localeConverter.toHelpCenterLocaleString(this.deviceLocale);
        if (!helpCenterLocaleString.equals(helpCenterSettings.getLocale())) {
            Logger.m289w(LOG_TAG, "No support for %s, Help Center is %s in your application settings", helpCenterLocaleString, Boolean.valueOf(helpCenterSettings.isEnabled()));
        }
    }

    @Override // zendesk.support.SupportSettingsProvider
    public void getSettings(@Nullable ZendeskCallback<SupportSdkSettings> zendeskCallback) {
        this.sdkSettingsProvider.getSettingsForSdk(SUPPORT_KEY, SupportSettings.class, new LoadSupportSettings(zendeskCallback));
    }
}
