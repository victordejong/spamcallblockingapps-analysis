package p081h.p203i.p204a.p206b.p209j;

import android.content.Context;
import androidx.annotation.RestrictTo;
import java.util.Collections;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;
import p081h.p203i.p204a.p206b.AbstractC6498g;
import p081h.p203i.p204a.p206b.AbstractC6499h;
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.AbstractC6587s;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p217y.AbstractC6621e;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6644m;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6648q;
@Singleton
/* renamed from: h.i.a.b.j.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/r.class */
public class C6586r implements AbstractC6585q {

    /* renamed from: e */
    public static volatile AbstractC6587s f16386e;

    /* renamed from: a */
    public final AbstractC6550a f16387a;

    /* renamed from: b */
    public final AbstractC6550a f16388b;

    /* renamed from: c */
    public final AbstractC6621e f16389c;

    /* renamed from: d */
    public final C6644m f16390d;

    @Inject
    public C6586r(AbstractC6550a aVar, AbstractC6550a aVar2, AbstractC6621e eVar, C6644m mVar, C6648q qVar) {
        this.f16387a = aVar;
        this.f16388b = aVar2;
        this.f16389c = eVar;
        this.f16390d = mVar;
        qVar.m22174a();
    }

    /* renamed from: a */
    public static void m22281a(Context context) {
        if (f16386e == null) {
            synchronized (C6586r.class) {
                try {
                    if (f16386e == null) {
                        AbstractC6587s.AbstractC6588a c = C6565d.m22340c();
                        c.mo22273a(context);
                        f16386e = c.build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: b */
    public static C6586r m22277b() {
        AbstractC6587s sVar = f16386e;
        if (sVar != null) {
            return sVar.mo22274b();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: b */
    public static Set<C6493b> m22276b(AbstractC6568e eVar) {
        return eVar instanceof AbstractC6569f ? Collections.unmodifiableSet(((AbstractC6569f) eVar).mo22339a()) : Collections.singleton(C6493b.m22467a("proto"));
    }

    /* renamed from: a */
    public AbstractC6498g m22280a(AbstractC6568e eVar) {
        Set<C6493b> b = m22276b(eVar);
        AbstractC6580m.AbstractC6581a d = AbstractC6580m.m22292d();
        d.mo22289a(eVar.getName());
        d.mo22288a(eVar.getExtras());
        return new C6582n(b, d.mo22291a(), this);
    }

    /* renamed from: a */
    public final AbstractC6571h m22279a(AbstractC6578l lVar) {
        AbstractC6571h.AbstractC6572a i = AbstractC6571h.m22325i();
        i.mo22323a(this.f16387a.mo22344a());
        i.mo22314b(this.f16388b.mo22344a());
        i.mo22320a(lVar.mo22304f());
        i.mo22322a(new C6570g(lVar.mo22309a(), lVar.m22307c()));
        i.mo22321a(lVar.mo22308b().mo22466a());
        return i.mo22324a();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: a */
    public C6644m m22282a() {
        return this.f16390d;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6585q
    /* renamed from: a */
    public void mo22278a(AbstractC6578l lVar, AbstractC6499h hVar) {
        this.f16389c.mo22223a(lVar.mo22305e().m22295a(lVar.mo22308b().mo22462c()), m22279a(lVar), hVar);
    }
}
