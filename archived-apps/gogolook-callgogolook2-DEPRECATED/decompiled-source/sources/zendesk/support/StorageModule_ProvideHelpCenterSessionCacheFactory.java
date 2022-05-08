package zendesk.support;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory.class */
public final class StorageModule_ProvideHelpCenterSessionCacheFactory implements AbstractC10866b<HelpCenterSessionCache> {
    public final StorageModule module;

    public StorageModule_ProvideHelpCenterSessionCacheFactory(StorageModule storageModule) {
        this.module = storageModule;
    }

    public static StorageModule_ProvideHelpCenterSessionCacheFactory create(StorageModule storageModule) {
        return new StorageModule_ProvideHelpCenterSessionCacheFactory(storageModule);
    }

    public static HelpCenterSessionCache provideHelpCenterSessionCache(StorageModule storageModule) {
        HelpCenterSessionCache provideHelpCenterSessionCache = storageModule.provideHelpCenterSessionCache();
        C10867c.m10383a(provideHelpCenterSessionCache, "Cannot return null from a non-@Nullable @Provides method");
        return provideHelpCenterSessionCache;
    }

    @Override // javax.inject.Provider
    public HelpCenterSessionCache get() {
        return provideHelpCenterSessionCache(this.module);
    }
}
