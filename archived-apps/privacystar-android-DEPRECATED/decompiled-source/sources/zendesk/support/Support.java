package zendesk.support;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import java.util.Locale;
import javax.inject.Inject;
import zendesk.core.ActionHandler;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.AuthenticationProvider;
import zendesk.core.CoreModule;
import zendesk.core.Zendesk;
import zendesk.support.ApplicationScope;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Support.class */
public enum Support {
    INSTANCE;
    
    private static final String LOG_TAG = "ZendeskConfiguration";
    @Inject
    ActionHandlerRegistry actionHandlerRegistry;
    private ApplicationScope applicationScope;
    @Inject
    AuthenticationProvider authenticationProvider;
    @Inject
    SupportBlipsProvider blipsProvider;
    private Locale helpCenterLocaleOverride;
    private boolean initialised;
    @Inject
    ProviderStore providerStore;
    @Inject
    RequestMigrator requestMigrator;
    @Inject
    RequestProvider requestProvider;
    @Inject
    SupportModule supportModule;

    private void initApplicationScope(CoreModule coreModule, ApplicationScope applicationScope) {
        this.applicationScope = applicationScope;
        DaggerSupportSdkProvidersComponent.builder().coreModule(coreModule).providerModule(new ProviderModule()).storageModule(new StorageModule()).supportApplicationModule(new SupportApplicationModule(applicationScope)).build().inject(this);
    }

    public Locale getHelpCenterLocaleOverride() {
        return this.helpCenterLocaleOverride;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SupportModule getSupportModule() {
        return this.supportModule;
    }

    public void init(@NonNull Zendesk zendesk2) {
        if (zendesk2.isInitialized()) {
            initApplicationScope(zendesk2.coreModule(), new ApplicationScope.Builder().zendeskTracker(new AnswersTracker()).build());
            this.initialised = true;
            return;
        }
        Logger.m295e(LOG_TAG, "Cannot use SupportSDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...)", new Object[0]);
    }

    void installTracker(ZendeskTracker zendeskTracker) {
        initApplicationScope(Zendesk.INSTANCE.coreModule(), this.applicationScope.newBuilder().zendeskTracker(zendeskTracker).build());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAuthenticated() {
        return (this.authenticationProvider == null || this.authenticationProvider.getIdentity() == null) ? false : true;
    }

    public boolean isInitialized() {
        return this.initialised;
    }

    @Nullable
    public ProviderStore provider() {
        if (!isInitialized()) {
            Logger.m295e(LOG_TAG, "Cannot get ProviderStore before SDK has been initialized. init() must be called before provider().", new Object[0]);
            return null;
        } else if (isAuthenticated()) {
            return this.providerStore;
        } else {
            Logger.m295e(LOG_TAG, "Cannot get ProviderStore before an identity has been set. Zendesk.INSTANCE.setIdentity() must be called before provider().", new Object[0]);
            return null;
        }
    }

    public boolean refreshRequest(String str, Context context) {
        if (!isInitialized()) {
            Logger.m295e(LOG_TAG, "Cannot use Support SDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...) and Support.INSTANCE.init(Zendesk)", new Object[0]);
            return false;
        } else if (!isAuthenticated()) {
            Logger.m295e(LOG_TAG, "Cannot use Support SDK without setting an identity. Zendesk.INSTANCE.setIdentity(...) must be called before refreshRequest(...).", new Object[0]);
            return false;
        } else {
            ActionHandlerRegistry actionHandlerRegistry = this.actionHandlerRegistry;
            ActionHandler handlerByAction = actionHandlerRegistry.handlerByAction(Constants.ACTION_REFRESH_REQUEST_CONVERSATION + str);
            if (handlerByAction != null) {
                handlerByAction.handle(null, context);
                return true;
            }
            ActionHandler handlerByAction2 = this.actionHandlerRegistry.handlerByAction(Constants.ACTION_REFRESH_REQUEST_LIST);
            if (handlerByAction2 != null) {
                handlerByAction2.handle(null, context);
                return false;
            }
            this.requestProvider.markRequestAsUnread(str);
            return false;
        }
    }

    public void setHelpCenterLocaleOverride(Locale locale) {
        this.helpCenterLocaleOverride = locale;
    }
}
