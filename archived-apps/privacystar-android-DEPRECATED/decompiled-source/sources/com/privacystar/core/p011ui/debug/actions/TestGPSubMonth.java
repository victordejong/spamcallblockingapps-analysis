package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
/* renamed from: com.privacystar.core.ui.debug.actions.TestGPSubMonth */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestGPSubMonth.class */
public class TestGPSubMonth extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test GP Month Sub";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        BillingHelper.attemptPurchase(context, "privacystar299", IABV3Helper.SkuType.SUBSCRIPTION);
    }
}
