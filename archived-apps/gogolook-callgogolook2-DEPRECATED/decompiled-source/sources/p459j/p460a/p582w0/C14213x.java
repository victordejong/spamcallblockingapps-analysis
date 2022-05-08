package p459j.p460a.p582w0;

import android.app.Activity;
import android.app.Dialog;
/* renamed from: j.a.w0.x */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x.class */
public final class C14213x {
    static {
        new C14213x();
    }

    /* renamed from: a */
    public static final void m2211a(Dialog dialog) {
        if (dialog != null) {
            if (!(dialog.isShowing() && (!(dialog.getContext() instanceof Activity) || C14191v.m2255b(dialog.getContext())))) {
                dialog = null;
            }
            if (dialog != null) {
                try {
                    dialog.dismiss();
                } catch (IllegalArgumentException e) {
                    C14080m2.m2612a((Throwable) e);
                } catch (Throwable th) {
                    C14080m2.m2612a(th);
                }
            }
        }
    }
}
