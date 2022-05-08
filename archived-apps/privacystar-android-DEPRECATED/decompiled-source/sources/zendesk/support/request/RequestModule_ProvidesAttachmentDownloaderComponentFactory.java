package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.suas.Dispatcher;
import zendesk.support.request.AttachmentDownloaderComponent;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesAttachmentDownloaderComponentFactory.class */
public final class RequestModule_ProvidesAttachmentDownloaderComponentFactory implements Factory<AttachmentDownloaderComponent> {
    private final Provider<ActionFactory> actionFactoryProvider;
    private final Provider<AttachmentDownloaderComponent.AttachmentDownloader> attachmentDownloaderProvider;
    private final Provider<Dispatcher> dispatcherProvider;

    public RequestModule_ProvidesAttachmentDownloaderComponentFactory(Provider<Dispatcher> provider, Provider<ActionFactory> provider2, Provider<AttachmentDownloaderComponent.AttachmentDownloader> provider3) {
        this.dispatcherProvider = provider;
        this.actionFactoryProvider = provider2;
        this.attachmentDownloaderProvider = provider3;
    }

    public static Factory<AttachmentDownloaderComponent> create(Provider<Dispatcher> provider, Provider<ActionFactory> provider2, Provider<AttachmentDownloaderComponent.AttachmentDownloader> provider3) {
        return new RequestModule_ProvidesAttachmentDownloaderComponentFactory(provider, provider2, provider3);
    }

    public static AttachmentDownloaderComponent proxyProvidesAttachmentDownloaderComponent(Dispatcher dispatcher, Object obj, Object obj2) {
        return RequestModule.providesAttachmentDownloaderComponent(dispatcher, (ActionFactory) obj, (AttachmentDownloaderComponent.AttachmentDownloader) obj2);
    }

    @Override // javax.inject.Provider
    public AttachmentDownloaderComponent get() {
        return (AttachmentDownloaderComponent) Preconditions.checkNotNull(RequestModule.providesAttachmentDownloaderComponent(this.dispatcherProvider.get(), this.actionFactoryProvider.get(), this.attachmentDownloaderProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
