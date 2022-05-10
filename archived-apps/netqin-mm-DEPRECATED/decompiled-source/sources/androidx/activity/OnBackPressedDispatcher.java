package androidx.activity;

import androidx.lifecycle.Lifecycle;
import java.util.ArrayDeque;
import java.util.Iterator;
import p012b.p013a.AbstractC0570a;
import p012b.p013a.AbstractC0571b;
import p012b.p068o.AbstractC1107e;
import p012b.p068o.AbstractC1109g;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    public final Runnable f148a;

    /* renamed from: b */
    public final ArrayDeque<AbstractC0571b> f149b = new ArrayDeque<>();

    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    public class LifecycleOnBackPressedCancellable implements AbstractC1107e, AbstractC0570a {

        /* renamed from: a */
        public final Lifecycle f150a;

        /* renamed from: b */
        public final AbstractC0571b f151b;

        /* renamed from: c */
        public AbstractC0570a f152c;

        public LifecycleOnBackPressedCancellable(Lifecycle lifecycle, AbstractC0571b bVar) {
            this.f150a = lifecycle;
            this.f151b = bVar;
            lifecycle.mo34659a(this);
        }

        @Override // p012b.p068o.AbstractC1107e
        /* renamed from: a */
        public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_START) {
                this.f152c = OnBackPressedDispatcher.this.m39224a(this.f151b);
            } else if (event == Lifecycle.Event.ON_STOP) {
                AbstractC0570a aVar = this.f152c;
                if (aVar != null) {
                    aVar.cancel();
                }
            } else if (event == Lifecycle.Event.ON_DESTROY) {
                cancel();
            }
        }

        @Override // p012b.p013a.AbstractC0570a
        public void cancel() {
            this.f150a.mo34654b(this);
            this.f151b.m36903b(this);
            AbstractC0570a aVar = this.f152c;
            if (aVar != null) {
                aVar.cancel();
                this.f152c = null;
            }
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    public class C0068a implements AbstractC0570a {

        /* renamed from: a */
        public final AbstractC0571b f154a;

        public C0068a(AbstractC0571b bVar) {
            this.f154a = bVar;
        }

        @Override // p012b.p013a.AbstractC0570a
        public void cancel() {
            OnBackPressedDispatcher.this.f149b.remove(this.f154a);
            this.f154a.m36903b(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f148a = runnable;
    }

    /* renamed from: a */
    public AbstractC0570a m39224a(AbstractC0571b bVar) {
        this.f149b.add(bVar);
        C0068a aVar = new C0068a(bVar);
        bVar.m36906a(aVar);
        return aVar;
    }

    /* renamed from: a */
    public void m39225a() {
        Iterator<AbstractC0571b> descendingIterator = this.f149b.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0571b next = descendingIterator.next();
            if (next.m36904b()) {
                next.mo34767a();
                return;
            }
        }
        Runnable runnable = this.f148a;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public void m39223a(AbstractC1109g gVar, AbstractC0571b bVar) {
        Lifecycle a = gVar.mo34644a();
        if (a.mo34663a() != Lifecycle.State.DESTROYED) {
            bVar.m36906a(new LifecycleOnBackPressedCancellable(a, bVar));
        }
    }
}
