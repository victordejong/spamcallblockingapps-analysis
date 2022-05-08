package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.realm.RealmController;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.CompactRealm */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/CompactRealm.class */
public class CompactRealm extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Compact Realm";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        RealmController.compactRealm();
    }
}
