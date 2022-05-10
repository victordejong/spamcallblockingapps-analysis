package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.ScalarSubscription;
import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
/* renamed from: d.c.b0.e.b.q */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/q.class */
public final class C9701q {

    /* renamed from: d.c.b0.e.b.q$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/q$a.class */
    public static final class C9702a<T, R> extends AbstractC9814e<R> {

        /* renamed from: b */
        public final T f36788b;

        /* renamed from: c */
        public final AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> f36789c;

        public C9702a(T t, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar) {
            this.f36788b = t;
            this.f36789c = hVar;
        }

        @Override // p530d.p541c.AbstractC9814e
        /* renamed from: a */
        public void mo213a(AbstractC10433c<? super R> cVar) {
            try {
                Object apply = this.f36789c.apply((T) this.f36788b);
                C9650a.m2095a(apply, "The mapper returned a null Publisher");
                AbstractC10432b bVar = (AbstractC10432b) apply;
                if (bVar instanceof Callable) {
                    try {
                        Object call = ((Callable) bVar).call();
                        if (call == null) {
                            EmptySubscription.complete(cVar);
                        } else {
                            cVar.onSubscribe(new ScalarSubscription(cVar, call));
                        }
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        EmptySubscription.error(th, cVar);
                    }
                } else {
                    bVar.subscribe(cVar);
                }
            } catch (Throwable th2) {
                EmptySubscription.error(th2, cVar);
            }
        }
    }

    /* renamed from: a */
    public static <T, U> AbstractC9814e<U> m2081a(T t, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends U>> hVar) {
        return C9815a.m1938a(new C9702a(t, hVar));
    }

    /* renamed from: a */
    public static <T, R> boolean m2082a(AbstractC10432b<T> bVar, AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar) {
        if (!(bVar instanceof Callable)) {
            return false;
        }
        try {
            Object obj = (Object) ((Callable) bVar).call();
            if (obj == 0) {
                EmptySubscription.complete(cVar);
                return true;
            }
            try {
                Object apply = hVar.apply(obj);
                C9650a.m2095a(apply, "The mapper returned a null Publisher");
                AbstractC10432b bVar2 = (AbstractC10432b) apply;
                if (bVar2 instanceof Callable) {
                    try {
                        Object call = ((Callable) bVar2).call();
                        if (call == null) {
                            EmptySubscription.complete(cVar);
                            return true;
                        }
                        cVar.onSubscribe(new ScalarSubscription(cVar, call));
                        return true;
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        EmptySubscription.error(th, cVar);
                        return true;
                    }
                } else {
                    bVar2.subscribe(cVar);
                    return true;
                }
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                EmptySubscription.error(th2, cVar);
                return true;
            }
        } catch (Throwable th3) {
            C9863a.m1822b(th3);
            EmptySubscription.error(th3, cVar);
            return true;
        }
    }
}
