package p193e.p194a.p437c.p438a.p487k.p489b;

import android.content.Context;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p438a.p446c.p450g.C8833c;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p487k.p490c.C9213d;
import p193e.p194a.p437c.p438a.p487k.p491d.AbstractC9214a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.AbstractC10257g;
import q3.a.i0;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.k.b.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/b.class */
public final class C9199b extends AbstractC9107c<AbstractC9214a, C9213d> {

    /* renamed from: b */
    public final i0 f27965b;

    /* renamed from: c */
    public final AbstractC10257g f27966c;

    /* renamed from: d */
    public final f f27967d;

    /* renamed from: e */
    public final AbstractC9691j f27968e;

    /* renamed from: f */
    public final Long f27969f;

    /* renamed from: e.a.c.a.k.b.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/b$a.class */
    public static final class C9200a extends m implements l<Context, s> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC9214a f27970b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9200a(AbstractC9214a abstractC9214a) {
            super(1);
            this.f27970b = abstractC9214a;
        }

        /* renamed from: d */
        public Object m27800d(Object obj) {
            s1.z.c.l.e((Context) obj, "it");
            AbstractC9214a abstractC9214a = this.f27970b;
            if (abstractC9214a != null) {
                abstractC9214a.mo27792a();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9199b(AbstractC10257g abstractC10257g, @Named("IO") f fVar, AbstractC9691j abstractC9691j, Long l) {
        super(fVar);
        s1.z.c.l.e(abstractC10257g, "messageFetcher");
        s1.z.c.l.e(fVar, "ioContext");
        s1.z.c.l.e(abstractC9691j, "insightsStatusProvider");
        this.f27966c = abstractC10257g;
        this.f27967d = fVar;
        this.f27968e = abstractC9691j;
        this.f27969f = l;
        this.f27965b = d.h(fVar);
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public C9213d mo27441a() {
        return new C9213d(m27801d(false, null), s1.u.s.a);
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: b */
    public q3.a.x2.f<C9213d> mo27440b(AbstractC9214a abstractC9214a) {
        AbstractC9214a abstractC9214a2 = abstractC9214a;
        s1.z.c.l.e(abstractC9214a2, "input");
        return d.P(new C9195a(this, abstractC9214a2, null));
    }

    /* renamed from: d */
    public final AdapterItem.C4117i m27801d(boolean z, AbstractC9214a abstractC9214a) {
        AdapterItem.C4117i c4117i = null;
        if (!this.f27968e.mo27286I()) {
            c4117i = null;
            if (this.f27968e.mo27289F()) {
                int i = C4078R.string.starred_messages;
                C8833c c8833c = null;
                if (z) {
                    c8833c = null;
                    if (!this.f27968e.mo27289F()) {
                        c8833c = new C8833c(C4078R.string.remove_all, new C9200a(abstractC9214a));
                    }
                }
                c4117i = new AdapterItem.C4117i(i, null, 0L, c8833c, null, null, null, 118);
            }
        }
        return c4117i;
    }
}
