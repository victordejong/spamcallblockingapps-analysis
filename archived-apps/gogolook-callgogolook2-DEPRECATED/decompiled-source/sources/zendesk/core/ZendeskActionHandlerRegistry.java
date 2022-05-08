package zendesk.core;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import p081h.p203i.p384e.AbstractC10104j;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskActionHandlerRegistry.class */
public class ZendeskActionHandlerRegistry implements ActionHandlerRegistry {
    public List<ActionHandler> registry = new ArrayList();

    static {
        new Comparator<ActionHandler>() { // from class: zendesk.core.ZendeskActionHandlerRegistry.2
            public int compare(ActionHandler actionHandler, ActionHandler actionHandler2) {
                return actionHandler2.getPriority() - actionHandler.getPriority();
            }
        };
    }

    @Override // zendesk.core.ActionHandlerRegistry
    public void updateSettings(Map<String, AbstractC10104j> map) {
        for (ActionHandler actionHandler : this.registry) {
            if (actionHandler != null) {
                actionHandler.updateSettings(map);
            }
        }
    }
}
