package zendesk.support.request;

import android.support.annotation.NonNull;
import zendesk.suas.Action;
import zendesk.suas.Reducer;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ReducerAndroidLifecycle.class */
class ReducerAndroidLifecycle extends Reducer<StateAndroidLifecycle> {
    @Override // zendesk.suas.Reducer
    @NonNull
    public StateAndroidLifecycle getInitialState() {
        return new StateAndroidLifecycle();
    }

    @Override // zendesk.suas.Reducer
    public /* bridge */ /* synthetic */ StateAndroidLifecycle reduce(@NonNull StateAndroidLifecycle stateAndroidLifecycle, @NonNull Action action) {
        return reduce2(stateAndroidLifecycle, (Action<?>) action);
    }

    /* renamed from: reduce  reason: avoid collision after fix types in other method */
    public StateAndroidLifecycle reduce2(@NonNull StateAndroidLifecycle stateAndroidLifecycle, @NonNull Action<?> action) {
        char c;
        String actionType = action.getActionType();
        int hashCode = actionType.hashCode();
        if (hashCode != -1661268122) {
            if (hashCode == 101190813 && actionType.equals("ANDROID_ON_RESUME")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (actionType.equals("ANDROID_ON_PAUSE")) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                return new StateAndroidLifecycle(1);
            case 1:
                return new StateAndroidLifecycle(2);
            default:
                return null;
        }
    }
}
