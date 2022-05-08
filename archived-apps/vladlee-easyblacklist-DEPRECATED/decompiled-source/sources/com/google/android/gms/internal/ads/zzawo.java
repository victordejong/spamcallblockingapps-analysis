package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawo.class */
public final class zzawo extends zzawp {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ WindowInsets m4243a(Activity activity, View view, WindowInsets windowInsets) {
        if (zzq.zzku().zzvf().zzwg() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                zzavu zzvf = zzq.zzku().zzvf();
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
                zzvf.zzeh(str);
            } else {
                zzq.zzku().zzvf().zzeh("");
            }
        }
        m4242a(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    /* renamed from: a */
    private static void m4242a(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = z ? 1 : 2;
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final void zzg(final Activity activity) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcjk)).booleanValue() && zzq.zzku().zzvf().zzwg() == null && !activity.isInMultiWindowMode()) {
            m4242a(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: com.google.android.gms.internal.ads.ez

                /* renamed from: a */
                private final zzawo f8449a;

                /* renamed from: b */
                private final Activity f8450b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8449a = this;
                    this.f8450b = activity;
                }

                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return zzawo.m4243a(this.f8450b, view, windowInsets);
                }
            });
        }
    }
}
