package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.util.NotificationUtil;
/* renamed from: com.privacystar.core.ui.debug.actions.TestNotRegisteredNotification */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestNotRegisteredNotification.class */
public class TestNotRegisteredNotification extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Not Registered Notification";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        NotificationUtil.showAppNotRegisteredNotification(context, true);
    }
}
