package androidx.transition;

import android.view.View;
import android.view.WindowId;
/* renamed from: androidx.transition.cc */
/* loaded from: classes-dex2jar.jar:androidx/transition/cc.class */
final class C1250cc implements AbstractC1251cd {

    /* renamed from: a */
    private final WindowId f5304a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1250cc(View view) {
        this.f5304a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C1250cc) && ((C1250cc) obj).f5304a.equals(this.f5304a);
    }

    public final int hashCode() {
        return this.f5304a.hashCode();
    }
}
