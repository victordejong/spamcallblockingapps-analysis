package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p454c.AbstractC10857e;
import p081h.p451q.p454c.C10852b;
import p081h.p451q.p455d.C10858a;
import zendesk.core.AnonymousIdentity;
import zendesk.core.AuthenticationProvider;
import zendesk.core.AuthenticationType;
import zendesk.core.Identity;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskRequestProvider.class */
public final class ZendeskRequestProvider implements RequestProvider {
    public final AuthenticationProvider authenticationProvider;
    public final SupportBlipsProvider blipsProvider;
    public final SupportSdkMetadata metadata;
    public final ZendeskRequestService requestService;
    public final RequestStorage requestStorage;
    public final SupportSettingsProvider settingsProvider;
    public final ZendeskTracker zendeskTracker;

    public ZendeskRequestProvider(SupportSettingsProvider supportSettingsProvider, ZendeskRequestService zendeskRequestService, AuthenticationProvider authenticationProvider, RequestStorage requestStorage, RequestSessionCache requestSessionCache, ZendeskTracker zendeskTracker, SupportSdkMetadata supportSdkMetadata, SupportBlipsProvider supportBlipsProvider) {
        this.settingsProvider = supportSettingsProvider;
        this.requestService = zendeskRequestService;
        this.authenticationProvider = authenticationProvider;
        this.requestStorage = requestStorage;
        this.zendeskTracker = zendeskTracker;
        this.metadata = supportSdkMetadata;
        this.blipsProvider = supportBlipsProvider;
    }

    public final void addServerTags(@NonNull CreateRequest createRequest, @NonNull SupportSdkSettings supportSdkSettings) {
        List<String> a = C10858a.m10401a(createRequest.getTags(), supportSdkSettings.getContactZendeskTags());
        if (C10858a.m10400b((Collection) a)) {
            C10845a.m10422a("ZendeskRequestProvider", "Adding tags to feedback...", new Object[0]);
            createRequest.setTags(a);
        }
    }

    @Override // zendesk.support.RequestProvider
    public void createRequest(@NonNull final CreateRequest createRequest, @Nullable final AbstractC10857e<Request> eVar) {
        if (!(createRequest != null)) {
            C10845a.m10419b("ZendeskRequestProvider", "configuration is invalid: request null", new Object[0]);
            if (eVar != null) {
                eVar.onError(new C10852b("configuration is invalid: request null"));
                return;
            }
            return;
        }
        this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(eVar) { // from class: zendesk.support.ZendeskRequestProvider.1
            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                createRequest.setMetadata(ZendeskRequestProvider.this.metadata.getDeviceInfoAsMapForMetaData());
                ZendeskRequestProvider.this.addServerTags(createRequest, supportSdkSettings);
                ZendeskRequestProvider.this.internalCreateRequest(createRequest, supportSdkSettings.getAuthenticationType(), ZendeskRequestProvider.this.authenticationProvider.getIdentity(), eVar);
            }
        });
    }

    public final void internalCreateRequest(@NonNull CreateRequest createRequest, AuthenticationType authenticationType, Identity identity, @Nullable final AbstractC10857e<Request> eVar) {
        ZendeskCallbackSuccess<Request> zendeskCallbackSuccess = new ZendeskCallbackSuccess<Request>(eVar) { // from class: zendesk.support.ZendeskRequestProvider.2
            public void onSuccess(Request request) {
                if (request.getId() == null) {
                    onError(new C10852b("The request was created, but the ID is unknown."));
                    return;
                }
                ZendeskRequestProvider.this.zendeskTracker.requestCreated();
                ZendeskRequestProvider.this.blipsProvider.requestCreated(request.getId());
                ZendeskRequestProvider.this.requestStorage.updateRequestData(Collections.singletonList(request));
                AbstractC10857e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.onSuccess(request);
                }
            }
        };
        if (authenticationType != AuthenticationType.ANONYMOUS || identity == null || !(identity instanceof AnonymousIdentity)) {
            this.requestService.createRequest(null, createRequest, zendeskCallbackSuccess);
            return;
        }
        this.requestService.createRequest(((AnonymousIdentity) identity).getSdkGuid(), createRequest, zendeskCallbackSuccess);
    }
}
