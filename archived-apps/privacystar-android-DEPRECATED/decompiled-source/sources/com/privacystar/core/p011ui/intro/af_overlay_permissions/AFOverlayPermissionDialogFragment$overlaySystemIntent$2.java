package com.privacystar.core.p011ui.intro.af_overlay_permissions;

import android.content.Intent;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "Landroid/content/Intent;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionDialogFragment$overlaySystemIntent$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment$overlaySystemIntent$2.class */
public final class AFOverlayPermissionDialogFragment$overlaySystemIntent$2 extends Lambda implements Function0<Intent> {
    final /* synthetic */ AFOverlayPermissionDialogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFOverlayPermissionDialogFragment$overlaySystemIntent$2(AFOverlayPermissionDialogFragment aFOverlayPermissionDialogFragment) {
        super(0);
        this.this$0 = aFOverlayPermissionDialogFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @Nullable
    public final Intent invoke() {
        return Build.VERSION.SDK_INT >= 23 ? this.this$0.getOverlaySettingsIntent() : null;
    }
}
