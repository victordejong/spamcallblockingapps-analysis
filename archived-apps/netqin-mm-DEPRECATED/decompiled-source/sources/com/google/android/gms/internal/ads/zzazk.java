package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzazk;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazk.class */
public final class zzazk extends zzazl {
    /* renamed from: a */
    public static /* synthetic */ WindowInsets m16026a(Activity activity, View view, WindowInsets windowInsets) {
        if (zzp.m17965g().m16176i().mo16057f() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                zzayr i = zzp.m17965g().m16176i();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String format = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    String str2 = str;
                    if (!TextUtils.isEmpty(str)) {
                        str2 = String.valueOf(str).concat("|");
                    }
                    String valueOf = String.valueOf(str2);
                    String valueOf2 = String.valueOf(format);
                    str = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                }
                i.mo16065b(str);
            } else {
                zzp.m17965g().m16176i().mo16065b("");
            }
        }
        m16025a(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    /* renamed from: a */
    public static void m16025a(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = z ? 1 : 2;
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final void mo16027a(final Activity activity) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23920z0)).booleanValue() && zzp.m17965g().m16176i().mo16057f() == null && !activity.isInMultiWindowMode()) {
            m16025a(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: c.d.b.d.g.a.o5

                /* renamed from: a */
                public final Activity f14295a;

                {
                    this.f14295a = activity;
                }

                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return zzazk.m16026a(this.f14295a, view, windowInsets);
                }
            });
        }
    }
}
