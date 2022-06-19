package androidx.activity;

import androidx.lifecycle.AbstractC0329h;
import androidx.lifecycle.AbstractC0340n;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    private final Runnable f70a;

    /* renamed from: b */
    final ArrayDeque<AbstractC0035b> f71b = new ArrayDeque<>();

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f70a = runnable;
    }

    /* renamed from: a */
    public void m6991a(AbstractC0340n abstractC0340n, AbstractC0035b abstractC0035b) {
        AbstractC0329h lifecycle = abstractC0340n.getLifecycle();
        if (lifecycle.m5438b() == AbstractC0329h.EnumC0332c.DESTROYED) {
            return;
        }
        abstractC0035b.m6988a(new LifecycleOnBackPressedCancellable(this, lifecycle, abstractC0035b));
    }

    /* renamed from: b */
    AbstractC0034a m6990b(AbstractC0035b abstractC0035b) {
        this.f71b.add(abstractC0035b);
        a aVar = new a(this, abstractC0035b);
        abstractC0035b.m6988a(aVar);
        return aVar;
    }

    /* renamed from: c */
    public void m6989c() {
        Iterator<AbstractC0035b> descendingIterator = this.f71b.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0035b next = descendingIterator.next();
            if (next.m6986c()) {
                next.m6987b();
                return;
            }
        }
        Runnable runnable = this.f70a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
