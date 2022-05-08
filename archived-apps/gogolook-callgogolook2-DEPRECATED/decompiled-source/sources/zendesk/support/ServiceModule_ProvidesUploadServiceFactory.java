package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.RestServiceProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvidesUploadServiceFactory.class */
public final class ServiceModule_ProvidesUploadServiceFactory implements AbstractC10866b<UploadService> {
    public final Provider<RestServiceProvider> restServiceProvider;

    public ServiceModule_ProvidesUploadServiceFactory(Provider<RestServiceProvider> provider) {
        this.restServiceProvider = provider;
    }

    public static ServiceModule_ProvidesUploadServiceFactory create(Provider<RestServiceProvider> provider) {
        return new ServiceModule_ProvidesUploadServiceFactory(provider);
    }

    public static UploadService providesUploadService(RestServiceProvider restServiceProvider) {
        UploadService providesUploadService = ServiceModule.providesUploadService(restServiceProvider);
        C10867c.m10383a(providesUploadService, "Cannot return null from a non-@Nullable @Provides method");
        return providesUploadService;
    }

    @Override // javax.inject.Provider
    public UploadService get() {
        return providesUploadService(this.restServiceProvider.get());
    }
}
