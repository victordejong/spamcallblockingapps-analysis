package com.privacystar.core.p011ui.call_center.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.call_center.CallCenterAction;
/* renamed from: com.privacystar.core.ui.call_center.actions.CallCenterAnswerAction */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/actions/CallCenterAnswerAction.class */
public class CallCenterAnswerAction extends CallCenterAction {
    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public int getImageID() {
        return C1566R.C1568drawable.ic_call_black_24dp;
    }

    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public int getLabelID() {
        return C1566R.string.call_answer;
    }

    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public void performAction(Context context) {
        Toast.makeText(context, "Would Answer", 0).show();
    }
}
