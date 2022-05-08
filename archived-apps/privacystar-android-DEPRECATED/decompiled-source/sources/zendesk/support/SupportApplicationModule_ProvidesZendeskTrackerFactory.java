package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory.class */
public final class SupportApplicationModule_ProvidesZendeskTrackerFactory implements Factory<ZendeskTracker> {
    private final SupportApplicationModule module;

    public SupportApplicationModule_ProvidesZendeskTrackerFactory(SupportApplicationModule supportApplicationModule) {
        this.module = supportApplicationModule;
    }

    public static Factory<ZendeskTracker> create(SupportApplicationModule supportApplicationModule) {
        return new SupportApplicationModule_ProvidesZendeskTrackerFactory(supportApplicationModule);
    }

    public static ZendeskTracker proxyProvidesZendeskTracker(SupportApplicationModule supportApplicationModule) {
        return supportApplicationModule.providesZendeskTracker();
    }

    @Override // javax.inject.Provider
    public ZendeskTracker get() {
        return (ZendeskTracker) Preconditions.checkNotNull(this.module.providesZendeskTracker(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
