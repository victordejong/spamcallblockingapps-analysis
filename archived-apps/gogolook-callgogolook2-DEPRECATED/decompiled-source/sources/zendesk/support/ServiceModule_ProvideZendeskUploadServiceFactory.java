package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideZendeskUploadServiceFactory.class */
public final class ServiceModule_ProvideZendeskUploadServiceFactory implements AbstractC10866b<ZendeskUploadService> {
    public final Provider<UploadService> uploadServiceProvider;

    public ServiceModule_ProvideZendeskUploadServiceFactory(Provider<UploadService> provider) {
        this.uploadServiceProvider = provider;
    }

    public static ServiceModule_ProvideZendeskUploadServiceFactory create(Provider<UploadService> provider) {
        return new ServiceModule_ProvideZendeskUploadServiceFactory(provider);
    }

    public static ZendeskUploadService provideZendeskUploadService(Object obj) {
        ZendeskUploadService provideZendeskUploadService = ServiceModule.provideZendeskUploadService((UploadService) obj);
        C10867c.m10383a(provideZendeskUploadService, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendeskUploadService;
    }

    @Override // javax.inject.Provider
    public ZendeskUploadService get() {
        return provideZendeskUploadService(this.uploadServiceProvider.get());
    }
}
