package p081h.p203i.p204a.p224e.p293r;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* renamed from: h.i.a.e.r.y */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/y.class */
public final class C9165y<TResult, TContinuationResult> implements AbstractC9130b, AbstractC9134d, AbstractC9137e<TContinuationResult>, AbstractC9129a0<TResult> {

    /* renamed from: a */
    public final Executor f20874a;

    /* renamed from: b */
    public final AbstractC9141g<TResult, TContinuationResult> f20875b;

    /* renamed from: c */
    public final C9135d0<TContinuationResult> f20876c;

    public C9165y(@NonNull Executor executor, @NonNull AbstractC9141g<TResult, TContinuationResult> gVar, @NonNull C9135d0<TContinuationResult> d0Var) {
        this.f20874a = executor;
        this.f20875b = gVar;
        this.f20876c = d0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9130b
    /* renamed from: a */
    public final void mo15258a() {
        this.f20876c.m16041f();
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: a */
    public final void mo15977a(@NonNull AbstractC9143h<TResult> hVar) {
        this.f20874a.execute(new RunnableC9166z(this, hVar));
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
    /* renamed from: a */
    public final void mo3757a(@NonNull Exception exc) {
        this.f20876c.m16045a(exc);
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9137e
    /* renamed from: a */
    public final void mo3758a(TContinuationResult tcontinuationresult) {
        this.f20876c.m16044a((C9135d0<TContinuationResult>) tcontinuationresult);
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: c */
    public final void mo15975c() {
        throw new UnsupportedOperationException();
    }
}
