package p193e.p194a.p947k.p968b;

import android.view.View;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k.b.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/d.class */
public final class View$OnClickListenerC15928d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C15918a f44918a;

    @e(c = "com.truecaller.videocallerid.debug.CachedVideosDebugDialog$setUpClearCacheButton$1$1$1", f = "CachedVideosDebugDialog.kt", l = {141}, m = "invokeSuspend")
    /* renamed from: e.a.k.b.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/d$a.class */
    public static final class C15929a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f44919e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15929a(d dVar) {
            super(2, dVar);
            View$OnClickListenerC15928d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18129i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15929a(dVar);
        }

        /* renamed from: k */
        public final Object m18128k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15929a(dVar).m18127s(s.a);
        }

        /* renamed from: s */
        public final Object m18127s(Object obj) {
            a aVar = a.a;
            int i = this.f44919e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16044q m18143RA = View$OnClickListenerC15928d.this.f44918a.m18143RA();
                this.f44919e = 1;
                if (m18143RA.mo17961b(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C15918a c15918a = View$OnClickListenerC15928d.this.f44918a;
            s1.a.l[] lVarArr = C15918a.f44897k;
            c15918a.m18142SA();
            return s.a;
        }
    }

    public View$OnClickListenerC15928d(C15918a c15918a) {
        this.f44918a = c15918a;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        s1.a.a.a.v0.f.d.w2(this.f44918a, (f) null, (j0) null, new C15929a(null), 3, (Object) null);
    }
}
