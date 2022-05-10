package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.g.a.x6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x6.class */
public final class ViewTreeObserver$OnScrollChangedListenerC4204x6 extends AbstractC4279z6 implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: b */
    public final WeakReference<ViewTreeObserver.OnScrollChangedListener> f15994b;

    public ViewTreeObserver$OnScrollChangedListenerC4204x6(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.f15994b = new WeakReference<>(onScrollChangedListener);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4279z6
    /* renamed from: a */
    public final void mo26102a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4279z6
    /* renamed from: b */
    public final void mo26100b(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.f15994b.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
        } else {
            m26101b();
        }
    }
}
