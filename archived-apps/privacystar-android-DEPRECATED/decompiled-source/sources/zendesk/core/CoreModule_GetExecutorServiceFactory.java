package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetExecutorServiceFactory.class */
public final class CoreModule_GetExecutorServiceFactory implements Factory<ExecutorService> {
    private final CoreModule module;

    public CoreModule_GetExecutorServiceFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<ExecutorService> create(CoreModule coreModule) {
        return new CoreModule_GetExecutorServiceFactory(coreModule);
    }

    public static ExecutorService proxyGetExecutorService(CoreModule coreModule) {
        return coreModule.getExecutorService();
    }

    @Override // javax.inject.Provider
    public ExecutorService get() {
        return (ExecutorService) Preconditions.checkNotNull(this.module.getExecutorService(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
