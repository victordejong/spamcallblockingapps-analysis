package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.g.a.z6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/z6.class */
public abstract class AbstractC4279z6 {

    /* renamed from: a */
    public final WeakReference<View> f16258a;

    public AbstractC4279z6(View view) {
        this.f16258a = new WeakReference<>(view);
    }

    /* renamed from: a */
    public final void m26103a() {
        ViewTreeObserver c = m26099c();
        if (c != null) {
            mo26102a(c);
        }
    }

    /* renamed from: a */
    public abstract void mo26102a(ViewTreeObserver viewTreeObserver);

    /* renamed from: b */
    public final void m26101b() {
        ViewTreeObserver c = m26099c();
        if (c != null) {
            mo26100b(c);
        }
    }

    /* renamed from: b */
    public abstract void mo26100b(ViewTreeObserver viewTreeObserver);

    /* renamed from: c */
    public final ViewTreeObserver m26099c() {
        ViewTreeObserver viewTreeObserver;
        View view = this.f16258a.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }
}
