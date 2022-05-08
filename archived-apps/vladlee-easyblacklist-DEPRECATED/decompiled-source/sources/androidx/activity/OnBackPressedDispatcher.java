package androidx.activity;

import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0930g;
import androidx.lifecycle.AbstractC0932i;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    final ArrayDeque<AbstractC0245c> f532a;

    /* renamed from: b */
    private final Runnable f533b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    public class LifecycleOnBackPressedCancellable implements AbstractC0243a, AbstractC0930g {

        /* renamed from: b */
        private final AbstractC0927f f535b;

        /* renamed from: c */
        private final AbstractC0245c f536c;

        /* renamed from: d */
        private AbstractC0243a f537d;

        LifecycleOnBackPressedCancellable(AbstractC0927f fVar, AbstractC0245c cVar) {
            this.f535b = fVar;
            this.f536c = cVar;
            fVar.mo7580a(this);
        }

        @Override // androidx.activity.AbstractC0243a
        /* renamed from: a */
        public final void mo9958a() {
            this.f535b.mo7575b(this);
            this.f536c.m9953b(this);
            AbstractC0243a aVar = this.f537d;
            if (aVar != null) {
                aVar.mo9958a();
                this.f537d = null;
            }
        }

        @Override // androidx.lifecycle.AbstractC0930g
        /* renamed from: a */
        public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
            if (aVar == AbstractC0927f.EnumC0928a.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                AbstractC0245c cVar = this.f536c;
                onBackPressedDispatcher.f532a.add(cVar);
                C0242a aVar2 = new C0242a(cVar);
                cVar.m9956a(aVar2);
                this.f537d = aVar2;
            } else if (aVar == AbstractC0927f.EnumC0928a.ON_STOP) {
                AbstractC0243a aVar3 = this.f537d;
                if (aVar3 != null) {
                    aVar3.mo9958a();
                }
            } else if (aVar == AbstractC0927f.EnumC0928a.ON_DESTROY) {
                mo9958a();
            }
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    private final class C0242a implements AbstractC0243a {

        /* renamed from: b */
        private final AbstractC0245c f539b;

        C0242a(AbstractC0245c cVar) {
            this.f539b = cVar;
        }

        @Override // androidx.activity.AbstractC0243a
        /* renamed from: a */
        public final void mo9958a() {
            OnBackPressedDispatcher.this.f532a.remove(this.f539b);
            this.f539b.m9953b(this);
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f532a = new ArrayDeque<>();
        this.f533b = runnable;
    }

    /* renamed from: a */
    public final void m9960a() {
        Iterator<AbstractC0245c> descendingIterator = this.f532a.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0245c next = descendingIterator.next();
            if (next.m9957a()) {
                next.mo7619c();
                return;
            }
        }
        Runnable runnable = this.f533b;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public final void m9959a(AbstractC0932i iVar, AbstractC0245c cVar) {
        AbstractC0927f lifecycle = iVar.getLifecycle();
        if (lifecycle.mo7584a() != AbstractC0927f.EnumC0929b.DESTROYED) {
            cVar.m9956a(new LifecycleOnBackPressedCancellable(lifecycle, cVar));
        }
    }
}
