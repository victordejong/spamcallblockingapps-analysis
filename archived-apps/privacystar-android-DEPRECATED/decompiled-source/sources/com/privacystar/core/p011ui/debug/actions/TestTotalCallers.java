package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.TestTotalCallers */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestTotalCallers.class */
public class TestTotalCallers extends DebugAction {
    private String customUrl = "";

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Caller Cache";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        int size = CallerFactory.getInstance().getSize();
        Toast.makeText(context, "There are " + size + " callers.", 0).show();
    }
}
