package p193e.p194a.p773g.p774a;

import android.database.ContentObserver;
import android.os.Handler;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p773g.p780e.AbstractC14237a;
import p193e.p194a.p773g.p780e.C14240d;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.g.a.j */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/j.class */
public final class C14200j extends ContentObserver {

    /* renamed from: a */
    public final /* synthetic */ AbstractC14205m f40958a;

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$contentObserver$1$onChange$1", f = "AfterCallBasePresenter.kt", l = {245}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.j$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/j$a.class */
    public static final class C14201a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f40959e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14201a(d dVar) {
            super(2, dVar);
            C14200j.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20479i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14201a(dVar);
        }

        /* renamed from: k */
        public final Object m20478k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C14201a(dVar).m20477s(s.a);
        }

        /* renamed from: s */
        public final Object m20477s(Object obj) {
            a aVar = a.a;
            int i = this.f40959e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC14205m abstractC14205m = C14200j.this.f40958a;
                this.f40959e = 1;
                if (abstractC14205m.m20440Xj(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C14200j.this.f40958a.m20420ok();
            AbstractC14205m abstractC14205m2 = C14200j.this.f40958a;
            if (abstractC14205m2.f41014p) {
                AbstractC14237a abstractC14237a = abstractC14205m2.f40980N;
                if (((C14240d) abstractC14237a).m20322i(abstractC14205m2.m20451Oj()) && ((C14240d) abstractC14205m2.f40980N).m20323h()) {
                    abstractC14205m2.f41014p = false;
                    abstractC14205m2.m20438Yj(true);
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14200j(AbstractC14205m abstractC14205m, Handler handler) {
        super(handler);
        this.f40958a = abstractC14205m;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        AbstractC14205m abstractC14205m = this.f40958a;
        s1.a.a.a.v0.f.d.w2(abstractC14205m, abstractC14205m.f41032y, (j0) null, new C14201a(null), 2, (Object) null);
    }
}
