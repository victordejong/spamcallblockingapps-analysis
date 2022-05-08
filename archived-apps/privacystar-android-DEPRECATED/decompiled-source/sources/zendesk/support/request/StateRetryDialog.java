package zendesk.support.request;

import java.io.Serializable;
import java.util.List;
import zendesk.support.request.StateUi;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateRetryDialog.class */
class StateRetryDialog implements StateUi.DialogState, Serializable {
    private final List<StateMessage> message;
    private final boolean visible;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateRetryDialog(List<StateMessage> list) {
        this(list, false);
    }

    private StateRetryDialog(List<StateMessage> list, boolean z) {
        this.message = list;
        this.visible = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<StateMessage> getMessage() {
        return this.message;
    }

    @Override // zendesk.support.request.StateUi.DialogState
    public boolean isVisible() {
        return this.visible;
    }

    @Override // zendesk.support.request.StateUi.DialogState
    public StateUi.DialogState setVisible(boolean z) {
        return new StateRetryDialog(this.message, z);
    }
}
