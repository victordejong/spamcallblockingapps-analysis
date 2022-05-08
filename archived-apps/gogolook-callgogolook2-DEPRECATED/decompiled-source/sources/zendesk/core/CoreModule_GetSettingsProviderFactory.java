package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetSettingsProviderFactory.class */
public final class CoreModule_GetSettingsProviderFactory implements AbstractC10866b<SettingsProvider> {
    public final CoreModule module;

    public CoreModule_GetSettingsProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static CoreModule_GetSettingsProviderFactory create(CoreModule coreModule) {
        return new CoreModule_GetSettingsProviderFactory(coreModule);
    }

    public static SettingsProvider getSettingsProvider(CoreModule coreModule) {
        SettingsProvider settingsProvider = coreModule.getSettingsProvider();
        C10867c.m10383a(settingsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return settingsProvider;
    }

    @Override // javax.inject.Provider
    public SettingsProvider get() {
        return getSettingsProvider(this.module);
    }
}
