package p530d.p541c;

import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.single.SingleResumeNext;
import io.reactivex.internal.operators.single.SingleToFlowable;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9653b;
import p530d.p541c.p543b0.p548e.p551c.C9717e;
import p530d.p541c.p543b0.p548e.p553e.C9766a;
import p530d.p541c.p543b0.p548e.p553e.C9768b;
import p530d.p541c.p543b0.p548e.p553e.C9771d;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.t */
/* loaded from: classes2-dex2jar.jar:d/c/t.class */
public abstract class AbstractC9850t<T> implements AbstractC9852v<T> {
    /* renamed from: a */
    public static <T> AbstractC9850t<T> m1844a(T t) {
        C9650a.m2095a((Object) t, "value is null");
        return C9815a.m1931a(new C9771d(t));
    }

    /* renamed from: a */
    public final AbstractC9833i<T> m1846a(AbstractC9646i<? super T> iVar) {
        C9650a.m2095a(iVar, "predicate is null");
        return C9815a.m1936a(new C9717e(this, iVar));
    }

    /* renamed from: a */
    public final AbstractC9850t<T> m1848a(AbstractC9644g<? super Throwable> gVar) {
        C9650a.m2095a(gVar, "onError is null");
        return C9815a.m1931a(new C9766a(this, gVar));
    }

    /* renamed from: a */
    public final AbstractC9850t<T> m1847a(AbstractC9645h<? super Throwable, ? extends AbstractC9852v<? extends T>> hVar) {
        C9650a.m2095a(hVar, "resumeFunctionInCaseOfError is null");
        return C9815a.m1931a(new SingleResumeNext(this, hVar));
    }

    /* renamed from: a */
    public final AbstractC9850t<T> m1845a(AbstractC9850t<? extends T> tVar) {
        C9650a.m2095a(tVar, "resumeSingleInCaseOfError is null");
        return m1847a((AbstractC9645h) Functions.m262b(tVar));
    }

    @Override // p530d.p541c.AbstractC9852v
    /* renamed from: a */
    public final void mo1841a(AbstractC9851u<? super T> uVar) {
        C9650a.m2095a(uVar, "subscriber is null");
        AbstractC9851u<? super T> a = C9815a.m1930a(this, uVar);
        C9650a.m2095a(a, "subscriber returned by the RxJavaPlugins hook is null");
        try {
            mo196b(a);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            C9863a.m1822b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* renamed from: b */
    public final AbstractC9850t<T> m1843b(AbstractC9644g<? super T> gVar) {
        C9650a.m2095a(gVar, "onSuccess is null");
        return C9815a.m1931a(new C9768b(this, gVar));
    }

    /* renamed from: b */
    public abstract void mo196b(AbstractC9851u<? super T> uVar);

    /* renamed from: d */
    public final AbstractC9814e<T> m1842d() {
        return this instanceof AbstractC9653b ? ((AbstractC9653b) this).mo2080c() : C9815a.m1938a(new SingleToFlowable(this));
    }
}
