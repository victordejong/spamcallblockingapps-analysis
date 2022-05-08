package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ActionHandlerRegistryFactory.class */
public final class ZendeskProvidersModule_ActionHandlerRegistryFactory implements AbstractC10866b<ActionHandlerRegistry> {
    public static final ZendeskProvidersModule_ActionHandlerRegistryFactory INSTANCE = new ZendeskProvidersModule_ActionHandlerRegistryFactory();

    public static ActionHandlerRegistry actionHandlerRegistry() {
        ActionHandlerRegistry actionHandlerRegistry = ZendeskProvidersModule.actionHandlerRegistry();
        C10867c.m10383a(actionHandlerRegistry, "Cannot return null from a non-@Nullable @Provides method");
        return actionHandlerRegistry;
    }

    public static ZendeskProvidersModule_ActionHandlerRegistryFactory create() {
        return INSTANCE;
    }

    @Override // javax.inject.Provider
    public ActionHandlerRegistry get() {
        return actionHandlerRegistry();
    }
}
