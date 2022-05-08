package p459j.p460a.p582w0;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.ActivityCompat;
import gogolook.callgogolook2.developmode.DevelopModeDialogActivity;
import gogolook.callgogolook2.intro.CallerIdIntroActivity;
import gogolook.callgogolook2.intro.PermissionActivity;
import gogolook.callgogolook2.setting.DualSimDddSettingActivity;
import gogolook.callgogolook2.util.control.VersionManager;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p596x.C14376j;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.c3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/c3.class */
public final class C13937c3 {
    static {
        new C13937c3();
    }

    /* renamed from: a */
    public static final boolean m3014a(Context context) {
        C15149k.m377b(context, "context");
        C14216x2.m2208a("PreloadUtils:shouldHandlePreloadTasks:isIntroCompleted:+");
        if (VersionManager.m25991e(4)) {
            VersionManager.m26003a(context);
            return true;
        } else if (C14217x3.m2107z()) {
            C14216x2.m2208a("PreloadUtils:handlePreloadTasks:isIntroCompleted:checkIntro");
            if ((context instanceof Activity) && C13878a3.m3197u() && !C13878a3.m3196v()) {
                ActivityCompat.requestPermissions((Activity) context, C13878a3.m3224c(), 0);
            }
            Intent a = (C13878a3.m3197u() || !C13915b3.m3062a("HasShownMainIntroTutorial", false)) ? C13878a3.m3257E() ? CallerIdIntroActivity.m28089a(context) : C12612g0.m5759r() ? DualSimDddSettingActivity.m26141a(context, 5) : null : PermissionActivity.m28077a(context);
            C14216x2.m2208a("PreloadUtils:shouldHandlePreloadTasks:isIntroCompleted:intent");
            if (a != null) {
                a.setFlags(335544320);
                C14217x3.m2156c(context, a);
                C14216x2.m2208a("PreloadUtils:shouldHandlePreloadTasks:isIntroCompleted:startActivity");
                return true;
            }
            C14216x2.m2208a("PreloadUtils:shouldHandlePreloadTasks:isIntroCompleted:-");
            return false;
        } else {
            try {
                C13565v g = C13565v.m3921g();
                C15149k.m383a((Object) g, "DevelopMode.getInstance()");
                if (g.m3924e()) {
                    C14217x3.m2156c(context, DevelopModeDialogActivity.m28589a(context, true));
                    return true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            C14376j.m1452b(context, true, false);
            return true;
        }
    }
}
