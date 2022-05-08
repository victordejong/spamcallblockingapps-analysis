package zendesk.core;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Locale;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p454c.AbstractC10857e;
import p081h.p451q.p454c.C10854d;
import p081h.p451q.p455d.C10862d;
import p655o.C15299r;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskPushRegistrationProvider.class */
public class ZendeskPushRegistrationProvider implements PushRegistrationProvider, PushRegistrationProviderInternal {
    public final BlipsCoreProvider blipsProvider;
    public final IdentityManager identityManager;
    public final PushDeviceIdStorage pushIdStorage;
    public final PushRegistrationService pushService;

    static {
        new C10854d.AbstractC10856b<PushRegistrationResponseWrapper, String>() { // from class: zendesk.core.ZendeskPushRegistrationProvider.4
            public String extract(PushRegistrationResponseWrapper pushRegistrationResponseWrapper) {
                return (pushRegistrationResponseWrapper == null || pushRegistrationResponseWrapper.getRegistrationResponse() == null || !C10862d.m10390b(pushRegistrationResponseWrapper.getRegistrationResponse().getIdentifier())) ? "" : pushRegistrationResponseWrapper.getRegistrationResponse().getIdentifier();
            }
        };
    }

    public ZendeskPushRegistrationProvider(PushRegistrationService pushRegistrationService, IdentityManager identityManager, SettingsProvider settingsProvider, BlipsCoreProvider blipsCoreProvider, PushDeviceIdStorage pushDeviceIdStorage, Locale locale) {
        this.pushService = pushRegistrationService;
        this.identityManager = identityManager;
        this.blipsProvider = blipsCoreProvider;
        this.pushIdStorage = pushDeviceIdStorage;
    }

    public final void onSuccessfulRegistration(String str) {
        this.pushIdStorage.storeRegisteredDeviceId(str);
        this.pushIdStorage.removePushRegistrationRequest();
        this.blipsProvider.corePushEnabled();
    }

    @Override // zendesk.core.PushRegistrationProviderInternal
    public String sendPushRegistrationRequest(PushRegistrationRequest pushRegistrationRequest) {
        try {
            C15299r<PushRegistrationResponseWrapper> execute = this.pushService.registerDevice(new PushRegistrationRequestWrapper(pushRegistrationRequest)).execute();
            if (execute.m95a() == null || execute.m95a().getRegistrationResponse() == null) {
                return "";
            }
            String identifier = execute.m95a().getRegistrationResponse().getIdentifier();
            onSuccessfulRegistration(identifier);
            return identifier;
        } catch (IOException e) {
            C10845a.m10423a("PushRegistrationProvider", "Push registration request failed.", e, new Object[0]);
            return "";
        }
    }

    @Override // zendesk.core.PushRegistrationProvider
    public void unregisterDevice(@Nullable final AbstractC10857e<Void> eVar) {
        String registeredDeviceId = this.pushIdStorage.getRegisteredDeviceId();
        final Long userId = this.identityManager.getUserId();
        if (registeredDeviceId != null) {
            this.pushService.unregisterDevice(registeredDeviceId).mo140a(new C10854d(new PassThroughErrorZendeskCallback<Void>(eVar) { // from class: zendesk.core.ZendeskPushRegistrationProvider.2
                public void onSuccess(Void r4) {
                    ZendeskPushRegistrationProvider.this.pushIdStorage.removeRegisteredDeviceId();
                    ZendeskPushRegistrationProvider.this.blipsProvider.corePushDisabled(userId);
                    AbstractC10857e eVar2 = eVar;
                    if (eVar2 != null) {
                        eVar2.onSuccess(r4);
                    }
                }
            }));
        }
    }
}
