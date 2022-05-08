package zendesk.support.request;

import android.support.annotation.NonNull;
import zendesk.suas.Action;
import zendesk.suas.Reducer;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ReducerConfiguration.class */
class ReducerConfiguration extends Reducer<StateConfig> {
    @Override // zendesk.suas.Reducer
    @NonNull
    public StateConfig getInitialState() {
        return new StateConfig();
    }

    @Override // zendesk.suas.Reducer
    public /* bridge */ /* synthetic */ StateConfig reduce(@NonNull StateConfig stateConfig, @NonNull Action action) {
        return reduce2(stateConfig, (Action<?>) action);
    }

    /* renamed from: reduce  reason: avoid collision after fix types in other method */
    public StateConfig reduce2(@NonNull StateConfig stateConfig, @NonNull Action<?> action) {
        char c;
        String actionType = action.getActionType();
        int hashCode = actionType.hashCode();
        if (hashCode != -91317760) {
            if (hashCode == 207206879 && actionType.equals("START_CONFIG")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (actionType.equals("LOAD_SETTINGS_SUCCESS")) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                RequestUiConfig requestUiConfig = (RequestUiConfig) action.getData();
                return stateConfig.newBuilder().setTags(requestUiConfig.getTags()).setTicketForm(requestUiConfig.getTicketForm()).setSubject(requestUiConfig.getRequestSubject()).build();
            case 1:
                return stateConfig.newBuilder().setSettings((StateSettings) action.getData()).build();
            default:
                return null;
        }
    }
}
