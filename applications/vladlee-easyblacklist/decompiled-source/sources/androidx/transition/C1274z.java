package androidx.transition;

import android.graphics.Rect;
import androidx.transition.Transition;
/* renamed from: androidx.transition.z */
/* loaded from: classes-dex2jar.jar:androidx/transition/z.class */
final class C1274z extends Transition.AbstractC1182b {

    /* renamed from: a */
    final /* synthetic */ Rect f5345a;

    /* renamed from: b */
    final /* synthetic */ C1270v f5346b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1274z(C1270v vVar, Rect rect) {
        this.f5346b = vVar;
        this.f5345a = rect;
    }

    @Override // androidx.transition.Transition.AbstractC1182b
    /* renamed from: a */
    public final Rect mo6475a() {
        Rect rect = this.f5345a;
        if (rect == null || rect.isEmpty()) {
            return null;
        }
        return this.f5345a;
    }
}
