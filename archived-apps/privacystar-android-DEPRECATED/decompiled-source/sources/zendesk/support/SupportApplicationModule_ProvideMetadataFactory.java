package zendesk.support;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportApplicationModule_ProvideMetadataFactory.class */
public final class SupportApplicationModule_ProvideMetadataFactory implements Factory<SupportSdkMetadata> {
    private final Provider<Context> contextProvider;
    private final SupportApplicationModule module;

    public SupportApplicationModule_ProvideMetadataFactory(SupportApplicationModule supportApplicationModule, Provider<Context> provider) {
        this.module = supportApplicationModule;
        this.contextProvider = provider;
    }

    public static Factory<SupportSdkMetadata> create(SupportApplicationModule supportApplicationModule, Provider<Context> provider) {
        return new SupportApplicationModule_ProvideMetadataFactory(supportApplicationModule, provider);
    }

    public static SupportSdkMetadata proxyProvideMetadata(SupportApplicationModule supportApplicationModule, Context context) {
        return supportApplicationModule.provideMetadata(context);
    }

    @Override // javax.inject.Provider
    public SupportSdkMetadata get() {
        return (SupportSdkMetadata) Preconditions.checkNotNull(this.module.provideMetadata(this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
