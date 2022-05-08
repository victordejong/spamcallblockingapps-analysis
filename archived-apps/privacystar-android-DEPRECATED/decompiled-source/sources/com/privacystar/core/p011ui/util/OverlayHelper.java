package com.privacystar.core.p011ui.util;

import android.os.Build;
import android.view.WindowManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/util/OverlayHelper;", "", "()V", "getOverlayLayoutParamForOS", "Landroid/view/WindowManager$LayoutParams;", "getOverlayLayoutTypeForOS", "", "getParamsWithLevel", FirebaseAnalytics.Param.LEVEL, "getWindowManagerFlags", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.util.OverlayHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/OverlayHelper.class */
public final class OverlayHelper {
    public static final OverlayHelper INSTANCE = new OverlayHelper();

    private OverlayHelper() {
    }

    private final WindowManager.LayoutParams getParamsWithLevel(int i) {
        return new WindowManager.LayoutParams(-1, -2, i, getWindowManagerFlags(), -3);
    }

    private final int getWindowManagerFlags() {
        return (Build.VERSION.SDK_INT >= 27 ? 16844137 : 524288) | 4194304 | 9 | 8 | 262144;
    }

    @NotNull
    public final WindowManager.LayoutParams getOverlayLayoutParamForOS() {
        return getParamsWithLevel(getOverlayLayoutTypeForOS());
    }

    public final int getOverlayLayoutTypeForOS() {
        int i;
        if (Build.VERSION.SDK_INT >= 26) {
            Timber.m28v("Using TYPE_APPLICATION_OVERLAY flag", new Object[0]);
            i = 2038;
        } else if (Build.VERSION.SDK_INT >= 23) {
            Timber.m28v("Using TYPE_TOAST flag", new Object[0]);
            i = 2005;
        } else {
            Timber.m28v("Using TYPE_PRIORITY_PHONE flag", new Object[0]);
            i = 2007;
        }
        return i;
    }
}
