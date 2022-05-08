package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.network.handler.AFAnalyticConfigHandler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/debug/actions/AFAnalyticConfigTest;", "Lcom/privacystar/core/ui/debug/DebugAction;", "()V", "getDescription", "", "getTitle", "onPerformAction", "", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.AFAnalyticConfigTest */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/AFAnalyticConfigTest.class */
public final class AFAnalyticConfigTest extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getDescription() {
        return "Triggers a request to pull the Analytic Config file";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getTitle() {
        return "Test AF Analytic config request";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        AFAnalyticConfigHandler.INSTANCE.getConfig();
    }
}
