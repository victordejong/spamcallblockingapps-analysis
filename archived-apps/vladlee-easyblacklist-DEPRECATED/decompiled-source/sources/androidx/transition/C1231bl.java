package androidx.transition;

import android.os.Build;
import android.view.ViewGroup;
/* renamed from: androidx.transition.bl */
/* loaded from: classes-dex2jar.jar:androidx/transition/bl.class */
final class C1231bl {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6532a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            C1234bo.m6530a(viewGroup, z);
        } else {
            C1232bm.m6531a(viewGroup, z);
        }
    }
}
