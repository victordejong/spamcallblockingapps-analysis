package com.criteo.publisher.advancednative;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
/* renamed from: com.criteo.publisher.advancednative.m */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/m.class */
public class C1959m {
    /* renamed from: a */
    public boolean m35968a(@NonNull View view) {
        if (!view.isShown()) {
            return false;
        }
        if (view.getWidth() == 0 || view.getHeight() == 0) {
            return false;
        }
        return view.getGlobalVisibleRect(new Rect());
    }
}
