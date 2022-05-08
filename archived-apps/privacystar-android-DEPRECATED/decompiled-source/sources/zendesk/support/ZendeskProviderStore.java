package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskProviderStore.class */
class ZendeskProviderStore implements ProviderStore {
    private final HelpCenterProvider helpCenterProvider;
    private final RequestProvider requestProvider;
    private final UploadProvider uploadProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskProviderStore(HelpCenterProvider helpCenterProvider, RequestProvider requestProvider, UploadProvider uploadProvider) {
        this.helpCenterProvider = helpCenterProvider;
        this.requestProvider = requestProvider;
        this.uploadProvider = uploadProvider;
    }

    @Override // zendesk.support.ProviderStore
    public HelpCenterProvider helpCenterProvider() {
        return this.helpCenterProvider;
    }

    @Override // zendesk.support.ProviderStore
    public RequestProvider requestProvider() {
        return this.requestProvider;
    }

    @Override // zendesk.support.ProviderStore
    public UploadProvider uploadProvider() {
        return this.uploadProvider;
    }
}
