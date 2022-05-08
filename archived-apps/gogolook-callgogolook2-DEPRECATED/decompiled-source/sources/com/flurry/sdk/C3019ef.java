package com.flurry.sdk;

import android.graphics.Rect;
import android.view.View;
/* renamed from: com.flurry.sdk.ef */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ef.class */
public final class C3019ef {
    /* renamed from: a */
    public static int m33278a(View view) {
        Rect rect = new Rect();
        if (view == null || !view.isShown() || !view.getGlobalVisibleRect(rect)) {
            return -1;
        }
        return (int) (((rect.width() * rect.height()) * 100.0d) / (view.getWidth() * view.getHeight()));
    }
}
