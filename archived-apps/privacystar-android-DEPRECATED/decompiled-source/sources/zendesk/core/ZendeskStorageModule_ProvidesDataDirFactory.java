package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidesDataDirFactory.class */
public final class ZendeskStorageModule_ProvidesDataDirFactory implements Factory<File> {
    private final Provider<Context> contextProvider;

    public ZendeskStorageModule_ProvidesDataDirFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static Factory<File> create(Provider<Context> provider) {
        return new ZendeskStorageModule_ProvidesDataDirFactory(provider);
    }

    public static File proxyProvidesDataDir(Context context) {
        return ZendeskStorageModule.providesDataDir(context);
    }

    @Override // javax.inject.Provider
    public File get() {
        return (File) Preconditions.checkNotNull(ZendeskStorageModule.providesDataDir(this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
