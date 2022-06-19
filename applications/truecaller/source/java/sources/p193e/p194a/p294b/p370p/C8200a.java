package p193e.p194a.p294b.p370p;

import androidx.appcompat.widget.SearchView;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.w2.v;
import q3.a.w2.x;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@e(c = "com.truecaller.bizmon.util.BizMonExtensionsKt$onQueryChangeListenerFlow$1", f = "BizMonExtensions.kt", l = {103}, m = "invokeSuspend")
/* renamed from: e.a.b.p.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/p/a.class */
public final class C8200a extends i implements p<x<? super String>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f25345e;

    /* renamed from: f */
    public int f25346f;

    /* renamed from: g */
    public final /* synthetic */ SearchView f25347g;

    /* renamed from: e.a.b.p.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/p/a$a.class */
    public static final class C8201a implements SearchView.AbstractC0071l {

        /* renamed from: a */
        public final /* synthetic */ x f25348a;

        public C8201a(x<? super String> xVar) {
            this.f25348a = xVar;
        }

        @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
        public boolean onQueryTextChange(String str) {
            this.f25348a.offer(str);
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
        public boolean onQueryTextSubmit(String str) {
            this.f25348a.offer(str);
            return true;
        }
    }

    /* renamed from: e.a.b.p.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/p/a$b.class */
    public static final class C8202b extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8202b() {
            super(0);
            C8200a.this = r4;
        }

        public Object invoke() {
            C8200a.this.f25347g.setOnQueryTextListener(null);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8200a(SearchView searchView, d dVar) {
        super(2, dVar);
        this.f25347g = searchView;
    }

    /* renamed from: i */
    public final d<s> m28779i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C8200a c8200a = new C8200a(this.f25347g, dVar);
        c8200a.f25345e = obj;
        return c8200a;
    }

    /* renamed from: k */
    public final Object m28778k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C8200a c8200a = new C8200a(this.f25347g, dVar);
        c8200a.f25345e = obj;
        return c8200a.m28777s(s.a);
    }

    /* renamed from: s */
    public final Object m28777s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f25346f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            x xVar = (x) this.f25345e;
            this.f25347g.setOnQueryTextListener(new C8201a(xVar));
            C8202b c8202b = new C8202b();
            this.f25346f = 1;
            if (v.a(xVar, c8202b, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
