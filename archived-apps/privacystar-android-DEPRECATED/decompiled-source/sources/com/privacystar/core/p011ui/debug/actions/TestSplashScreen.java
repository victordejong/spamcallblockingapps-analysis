package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.content.Intent;
import com.privacystar.core.p011ui.SplashActivity;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.PreferenceUtil;
/* renamed from: com.privacystar.core.ui.debug.actions.TestSplashScreen */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestSplashScreen.class */
public class TestSplashScreen extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Splash Screen";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        PreferenceUtil.putIsSplashPauseEnabled(true);
        context.startActivity(new Intent(context, SplashActivity.class));
    }
}
