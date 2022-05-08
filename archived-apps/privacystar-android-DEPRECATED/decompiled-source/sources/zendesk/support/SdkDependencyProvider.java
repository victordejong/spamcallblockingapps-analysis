package zendesk.support;

import android.annotation.SuppressLint;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;
import zendesk.core.ActionHandler;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.Zendesk;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/SdkDependencyProvider.class */
public enum SdkDependencyProvider {
    INSTANCE;
    
    public static final String NOT_INITIALIZED_LOG = "Zendesk is not initialized or no identity was set. Make sure Zendesk.INSTANCE.init(...), Zendesk.INSTANCE.setIdentity(...), Support.INSTANCE.init(...) was called ";
    @Inject
    List<ActionHandler> actionHandlers;

    /* renamed from: id */
    private UUID f1851id;
    @Inject
    ActionHandlerRegistry registry;
    private SupportSdkComponent supportSdkComponent;

    private void registerActionHandlers() {
        for (ActionHandler actionHandler : this.actionHandlers) {
            this.registry.add(actionHandler);
        }
    }

    @VisibleForTesting
    void initForTesting(SupportSdkComponent supportSdkComponent, UUID uuid) {
        this.supportSdkComponent = supportSdkComponent;
        this.f1851id = uuid;
    }

    public boolean isInitialized() {
        return Zendesk.INSTANCE.isInitialized() && Support.INSTANCE.isInitialized() && Support.INSTANCE.isAuthenticated();
    }

    @SuppressLint({"RestrictedApi"})
    public SupportSdkComponent provideSupportSdkComponent() {
        SupportModule supportModule = Support.INSTANCE.getSupportModule();
        UUID id = supportModule.getId();
        if (this.supportSdkComponent == null || !id.equals(this.f1851id)) {
            this.supportSdkComponent = DaggerSupportSdkComponent.builder().coreModule(Zendesk.INSTANCE.coreModule()).supportModule(supportModule).supportSdkModule(new SupportSdkModule()).build();
            this.f1851id = supportModule.getId();
            this.supportSdkComponent.inject(this);
            registerActionHandlers();
        }
        return this.supportSdkComponent;
    }
}
