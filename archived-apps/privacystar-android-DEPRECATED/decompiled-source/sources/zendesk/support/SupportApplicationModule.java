package zendesk.support;

import android.content.Context;
import dagger.Module;
import dagger.Provides;
import java.util.Locale;
import javax.inject.Singleton;
/* JADX INFO: Access modifiers changed from: package-private */
@Module
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportApplicationModule.class */
public class SupportApplicationModule {
    private ApplicationScope applicationScope;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SupportApplicationModule(ApplicationScope applicationScope) {
        this.applicationScope = applicationScope;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public Locale provideLocale() {
        return this.applicationScope.getLocale();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public SupportSdkMetadata provideMetadata(Context context) {
        return new SupportSdkMetadata(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public ZendeskTracker providesZendeskTracker() {
        return this.applicationScope.getZendeskTracker();
    }
}
