package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponseAdapter;
import com.zendesk.service.RetrofitZendeskCallbackAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.LocaleUtil;
import com.zendesk.util.StringUtils;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskPushRegistrationProvider.class */
public class ZendeskPushRegistrationProvider implements PushRegistrationProvider {
    private static final String LOG_TAG = "PushRegistrationProvider";
    private static final RetrofitZendeskCallbackAdapter.RequestExtractor<PushRegistrationResponseWrapper, String> PUSH_RESPONSE_EXTRACTOR = new RetrofitZendeskCallbackAdapter.RequestExtractor<PushRegistrationResponseWrapper, String>() { // from class: zendesk.core.ZendeskPushRegistrationProvider.5
        public String extract(PushRegistrationResponseWrapper pushRegistrationResponseWrapper) {
            return (pushRegistrationResponseWrapper == null || pushRegistrationResponseWrapper.getRegistrationResponse() == null || !StringUtils.hasLength(pushRegistrationResponseWrapper.getRegistrationResponse().getIdentifier())) ? "" : pushRegistrationResponseWrapper.getRegistrationResponse().getIdentifier();
        }
    };
    private final BlipsCoreProvider blipsProvider;
    private final IdentityManager identityManager;
    private final Locale locale;
    private final PushDeviceIdStorage pushIdStorage;
    private final PushRegistrationService pushService;
    private final SettingsProvider settingsProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskPushRegistrationProvider$TokenType.class */
    public enum TokenType {
        Identifier(null),
        UrbanAirshipChannelId("urban_airship_channel_id");
        
        final String name;

        TokenType(String str) {
            this.name = str;
        }

        String getName() {
            return this.name;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskPushRegistrationProvider(PushRegistrationService pushRegistrationService, IdentityManager identityManager, SettingsProvider settingsProvider, BlipsCoreProvider blipsCoreProvider, PushDeviceIdStorage pushDeviceIdStorage, Locale locale) {
        this.pushService = pushRegistrationService;
        this.identityManager = identityManager;
        this.settingsProvider = settingsProvider;
        this.blipsProvider = blipsCoreProvider;
        this.pushIdStorage = pushDeviceIdStorage;
        this.locale = locale;
    }

    private boolean checkForStoredPushRegistration(@NonNull String str, @Nullable ZendeskCallback<String> zendeskCallback) {
        if (!StringUtils.hasLength(str)) {
            if (zendeskCallback != null) {
                zendeskCallback.onError(new ErrorResponseAdapter("Invalid identifier provided."));
            }
            Logger.m289w(LOG_TAG, "Invalid identifier provided.", new Object[0]);
            return true;
        } else if (this.pushIdStorage.hasStoredDeviceId() && str.equals(this.pushIdStorage.getPushDeviceId())) {
            if (zendeskCallback != null) {
                zendeskCallback.onSuccess(str);
            }
            Logger.m298d(LOG_TAG, "Skipping registration because device is already registered with this ID.", new Object[0]);
            return true;
        } else if (!this.pushIdStorage.hasStoredDeviceId()) {
            return false;
        } else {
            this.pushIdStorage.removePushDeviceId();
            Logger.m298d(LOG_TAG, "Removing stored push registration response because a new one has been provided.", new Object[0]);
            return false;
        }
    }

    PushRegistrationRequest getPushRegistrationRequest(@NonNull String str, @NonNull Locale locale, @NonNull AuthenticationType authenticationType, @NonNull TokenType tokenType) {
        PushRegistrationRequest pushRegistrationRequest = new PushRegistrationRequest();
        pushRegistrationRequest.setIdentifier(str);
        pushRegistrationRequest.setLocale(LocaleUtil.toLanguageTag(locale));
        if (tokenType == TokenType.UrbanAirshipChannelId) {
            pushRegistrationRequest.setTokenType(tokenType.name);
        }
        if (AuthenticationType.ANONYMOUS == authenticationType) {
            pushRegistrationRequest.setSdkGuid(this.identityManager.getSdkGuid());
        }
        return pushRegistrationRequest;
    }

    void internalRegister(@NonNull PushRegistrationRequest pushRegistrationRequest, @Nullable final ZendeskCallback<String> zendeskCallback) {
        if (pushRegistrationRequest == null) {
            Logger.m295e(LOG_TAG, "PushRegistrationRequest is null. Cannot continue with registration.", new Object[0]);
            if (zendeskCallback != null) {
                zendeskCallback.onError(new ErrorResponseAdapter("PushRegistrationRequest is null. Cannot continue with registration."));
                return;
            }
            return;
        }
        PushRegistrationRequestWrapper pushRegistrationRequestWrapper = new PushRegistrationRequestWrapper();
        pushRegistrationRequestWrapper.setPushRegistrationRequest(pushRegistrationRequest);
        this.pushService.registerDevice(pushRegistrationRequestWrapper).enqueue(new RetrofitZendeskCallbackAdapter(new PassThroughErrorZendeskCallback<String>(zendeskCallback) { // from class: zendesk.core.ZendeskPushRegistrationProvider.4
            public void onSuccess(String str) {
                ZendeskPushRegistrationProvider.this.pushIdStorage.storePushDeviceId(str);
                ZendeskPushRegistrationProvider.this.blipsProvider.corePushEnabled();
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(str);
                }
            }
        }, PUSH_RESPONSE_EXTRACTOR));
    }

    @Override // zendesk.core.PushRegistrationProvider
    public boolean isRegisteredForPush() {
        return this.pushIdStorage.hasStoredDeviceId();
    }

    @Override // zendesk.core.PushRegistrationProvider
    public void registerWithDeviceIdentifier(@NonNull final String str, @Nullable final ZendeskCallback<String> zendeskCallback) {
        if (!checkForStoredPushRegistration(str, zendeskCallback)) {
            this.settingsProvider.getCoreSettings(new PassThroughErrorZendeskCallback<CoreSettings>(zendeskCallback) { // from class: zendesk.core.ZendeskPushRegistrationProvider.1
                public void onSuccess(CoreSettings coreSettings) {
                    AuthenticationType authentication = coreSettings.getAuthentication();
                    if (authentication != null) {
                        ZendeskPushRegistrationProvider.this.internalRegister(ZendeskPushRegistrationProvider.this.getPushRegistrationRequest(str, ZendeskPushRegistrationProvider.this.locale, authentication, TokenType.Identifier), zendeskCallback);
                    } else if (zendeskCallback != null) {
                        zendeskCallback.onError(new ErrorResponseAdapter("Authentication type is null."));
                    }
                }
            });
        }
    }

    @Override // zendesk.core.PushRegistrationProvider
    public void registerWithUAChannelId(@NonNull final String str, @Nullable final ZendeskCallback<String> zendeskCallback) {
        if (!checkForStoredPushRegistration(str, zendeskCallback)) {
            this.settingsProvider.getCoreSettings(new PassThroughErrorZendeskCallback<CoreSettings>(zendeskCallback) { // from class: zendesk.core.ZendeskPushRegistrationProvider.2
                public void onSuccess(CoreSettings coreSettings) {
                    AuthenticationType authentication = coreSettings.getAuthentication();
                    if (authentication != null) {
                        ZendeskPushRegistrationProvider.this.internalRegister(ZendeskPushRegistrationProvider.this.getPushRegistrationRequest(str, ZendeskPushRegistrationProvider.this.locale, authentication, TokenType.UrbanAirshipChannelId), zendeskCallback);
                    } else if (zendeskCallback != null) {
                        zendeskCallback.onError(new ErrorResponseAdapter("Authentication type is null."));
                    }
                }
            });
        }
    }

    @Override // zendesk.core.PushRegistrationProvider
    public void unregisterDevice(@Nullable final ZendeskCallback<Void> zendeskCallback) {
        String pushDeviceId = this.pushIdStorage.getPushDeviceId();
        final Long userId = this.identityManager.getUserId();
        if (pushDeviceId != null) {
            this.pushService.unregisterDevice(pushDeviceId).enqueue(new RetrofitZendeskCallbackAdapter(new PassThroughErrorZendeskCallback<Void>(zendeskCallback) { // from class: zendesk.core.ZendeskPushRegistrationProvider.3
                public void onSuccess(Void r4) {
                    ZendeskPushRegistrationProvider.this.pushIdStorage.removePushDeviceId();
                    ZendeskPushRegistrationProvider.this.blipsProvider.corePushDisabled(userId);
                    if (zendeskCallback != null) {
                        zendeskCallback.onSuccess(r4);
                    }
                }
            }));
        }
    }
}
