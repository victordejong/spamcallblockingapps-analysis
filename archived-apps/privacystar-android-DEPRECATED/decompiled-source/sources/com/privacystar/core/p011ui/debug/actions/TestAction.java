package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.TestAction */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestAction.class */
public class TestAction extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Action";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Toast.makeText(context, "Test Action", 0).show();
    }
}
