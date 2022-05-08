package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.network.handler.BlockListGetHandler;
/* renamed from: com.privacystar.core.ui.debug.actions.TestBlockListGet */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestBlockListGet.class */
public class TestBlockListGet extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Block List Get";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        BlockListGetHandler.getInstance().generateAndEnqueueRequest();
    }
}
