package com.privacystar.core.p011ui;

import android.content.Context;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.service.PreferenceUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.privacystar.core.ui.PSActivity$$Lambda$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/PSActivity$$Lambda$2.class */
public final /* synthetic */ class PSActivity$$Lambda$2 implements ButtonAction {
    static final ButtonAction $instance = new PSActivity$$Lambda$2();

    private PSActivity$$Lambda$2() {
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
    public void performAction(Context context) {
        PreferenceUtil.putPsServiceDisabledDialogShowing(false);
    }
}
