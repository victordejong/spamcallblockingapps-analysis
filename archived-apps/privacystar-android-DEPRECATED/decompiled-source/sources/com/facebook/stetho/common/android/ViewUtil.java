package com.facebook.stetho.common.android;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewParent;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/android/ViewUtil.class */
final class ViewUtil {
    private ViewUtil() {
    }

    @Nullable
    private static Activity tryGetActivity(Context context) {
        while (context != null) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Activity tryGetActivity(View view) {
        if (view == null) {
            return null;
        }
        Activity tryGetActivity = tryGetActivity(view.getContext());
        if (tryGetActivity != null) {
            return tryGetActivity;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return tryGetActivity((View) parent);
        }
        return null;
    }
}
