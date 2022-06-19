package p193e.p194a.p437c.p606w.p607o0;

import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p531c0.AbstractC10011a;
import p193e.p194a.p437c.p538g.C10202v;
import p193e.p194a.p437c.p552i.p554b.AbstractC10280e;
import p193e.p194a.p437c.p552i.p554b.C10284f;
import p193e.p194a.p437c.p580r.p586g.C10540c;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.w.o0.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/j.class */
public final class C10830j extends AbstractC10280e implements AbstractC10829i {

    /* renamed from: e */
    public final String f32170e;

    /* renamed from: f */
    public List<C10540c> f32171f;

    /* renamed from: g */
    public final AbstractC10011a f32172g;

    /* renamed from: h */
    public final f f32173h;

    /* renamed from: e.a.c.w.o0.j$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/j$a.class */
    public static final class C10831a extends m implements a<Boolean> {

        /* renamed from: c */
        public final /* synthetic */ C10202v f32175c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10831a(C10202v c10202v) {
            super(0);
            C10830j.this = r4;
            this.f32175c = c10202v;
        }

        public Object invoke() {
            List<C10540c> list = C10830j.this.f32171f;
            if (list == null) {
                l.l("configs");
                throw null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (l.a(((C10540c) obj).m25793b(), this.f32175c.f30276b)) {
                    arrayList.add(obj);
                }
            }
            boolean z = true;
            if (!arrayList.isEmpty()) {
                z = ((C10540c) i.B(arrayList)).m25794a().contains(this.f32175c.f30275a);
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C10830j(AbstractC10011a abstractC10011a, @Named("IO") f fVar, AbstractC9686e abstractC9686e) {
        super(fVar);
        l.e(abstractC10011a, "assetsReader");
        l.e(fVar, "coroutineContext");
        l.e(abstractC9686e, "environmentHelper");
        this.f32172g = abstractC10011a;
        this.f32173h = fVar;
        this.f32170e = abstractC9686e.mo27306g();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0091  */
    @Override // p193e.p194a.p437c.p552i.p554b.AbstractC10280e
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25566B(s1.w.d<? super s1.s> r5) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10830j.mo25566B(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10829i
    /* renamed from: w */
    public boolean mo25565w(C10202v c10202v) {
        l.e(c10202v, "updates");
        C10831a c10831a = new C10831a(c10202v);
        l.e(c10831a, "block");
        return ((Boolean) d.c3((f) null, new C10284f(this, c10831a, null), 1, (Object) null)).booleanValue();
    }
}
