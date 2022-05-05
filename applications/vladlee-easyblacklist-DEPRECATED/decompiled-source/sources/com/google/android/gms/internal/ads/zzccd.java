package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccd.class */
public final class zzccd {

    /* renamed from: a */
    private Context f12923a;

    /* renamed from: b */
    private PopupWindow f12924b;

    /* renamed from: a */
    private static PopupWindow m3808a(Context context, View view) {
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
        zzavs.zzea("Displaying the 1x1 popup off the screen.");
        try {
            popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
            return popupWindow;
        } catch (Exception e) {
            return null;
        }
    }

    public final void zza(Context context, View view) {
        if (PlatformVersion.isAtLeastKitKat() && !PlatformVersion.isAtLeastLollipop()) {
            this.f12924b = m3808a(context, view);
            if (this.f12924b == null) {
                context = null;
            }
            this.f12923a = context;
        }
    }

    public final void zzakx() {
        Context context = this.f12923a;
        if (context != null && this.f12924b != null) {
            if ((!(context instanceof Activity) || !((Activity) context).isDestroyed()) && this.f12924b.isShowing()) {
                this.f12924b.dismiss();
            }
            this.f12923a = null;
            this.f12924b = null;
        }
    }
}
