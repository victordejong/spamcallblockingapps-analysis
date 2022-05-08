package zendesk.support.request;

import java.io.Serializable;
import zendesk.suas.State;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateUi.class */
class StateUi implements Serializable {
    private final DialogState dialogState;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateUi$DialogState.class */
    interface DialogState {
        boolean isVisible();

        DialogState setVisible(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateUi() {
        this.dialogState = null;
    }

    StateUi(DialogState dialogState) {
        this.dialogState = dialogState;
    }

    static StateUi fromState(State state) {
        StateUi stateUi = (StateUi) state.getState(StateUi.class);
        return stateUi != null ? stateUi : new StateUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogState getDialogState() {
        return this.dialogState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateUi setDialogState(DialogState dialogState) {
        return new StateUi(dialogState);
    }

    public String toString() {
        return "UiState{dialogState=" + this.dialogState + '}';
    }
}
