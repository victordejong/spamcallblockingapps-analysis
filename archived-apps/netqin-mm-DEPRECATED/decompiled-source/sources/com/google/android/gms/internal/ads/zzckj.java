package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckj.class */
public final class zzckj {

    /* renamed from: a */
    public Context f26181a;

    /* renamed from: b */
    public PopupWindow f26182b;

    /* renamed from: b */
    public static PopupWindow m14113b(Context context, View view) {
        Window window = context instanceof Activity ? ((Activity) context).getWindow() : null;
        if (window == null || window.getDecorView() == null || ((Activity) context).isDestroyed()) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.addView(view, -1, -1);
        PopupWindow popupWindow = new PopupWindow((View) frameLayout, 1, 1, false);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setClippingEnabled(false);
        zzbbq.m15858a("Displaying the 1x1 popup off the screen.");
        try {
            popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
            return popupWindow;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public final void m14115a() {
        Context context = this.f26181a;
        if (context != null && this.f26182b != null) {
            if (!(context instanceof Activity) || !((Activity) context).isDestroyed()) {
                if (this.f26182b.isShowing()) {
                    this.f26182b.dismiss();
                }
                this.f26181a = null;
                this.f26182b = null;
                return;
            }
            this.f26181a = null;
            this.f26182b = null;
        }
    }

    /* renamed from: a */
    public final void m14114a(Context context, View view) {
        if (PlatformVersion.m17062f() && !PlatformVersion.m17060h()) {
            PopupWindow b = m14113b(context, view);
            this.f26182b = b;
            if (b == null) {
                context = null;
            }
            this.f26181a = context;
        }
    }
}
