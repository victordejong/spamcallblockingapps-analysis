package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.C1200al;
/* renamed from: androidx.transition.an */
/* loaded from: classes-dex2jar.jar:androidx/transition/an.class */
public final class C1203an {

    /* renamed from: a */
    private ViewGroup f5211a;

    /* renamed from: b */
    private Runnable f5212b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C1203an m6545a(View view) {
        return (C1203an) view.getTag(C1200al.C1201a.f5206f);
    }

    /* renamed from: a */
    public final void m6546a() {
        Runnable runnable;
        if (m6545a(this.f5211a) == this && (runnable = this.f5212b) != null) {
            runnable.run();
        }
    }
}
