package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.SessionStorage;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideArticleVoteStorageFactory.class */
public final class StorageModule_ProvideArticleVoteStorageFactory implements AbstractC10866b<ArticleVoteStorage> {
    public final Provider<SessionStorage> baseStorageProvider;
    public final StorageModule module;

    public StorageModule_ProvideArticleVoteStorageFactory(StorageModule storageModule, Provider<SessionStorage> provider) {
        this.module = storageModule;
        this.baseStorageProvider = provider;
    }

    public static StorageModule_ProvideArticleVoteStorageFactory create(StorageModule storageModule, Provider<SessionStorage> provider) {
        return new StorageModule_ProvideArticleVoteStorageFactory(storageModule, provider);
    }

    public static ArticleVoteStorage provideArticleVoteStorage(StorageModule storageModule, SessionStorage sessionStorage) {
        ArticleVoteStorage provideArticleVoteStorage = storageModule.provideArticleVoteStorage(sessionStorage);
        C10867c.m10383a(provideArticleVoteStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideArticleVoteStorage;
    }

    @Override // javax.inject.Provider
    public ArticleVoteStorage get() {
        return provideArticleVoteStorage(this.module, this.baseStorageProvider.get());
    }
}
