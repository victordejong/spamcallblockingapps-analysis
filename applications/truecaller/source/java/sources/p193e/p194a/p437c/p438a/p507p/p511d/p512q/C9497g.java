package p193e.p194a.p437c.p438a.p507p.p511d.p512q;

import android.widget.TextView;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.viewholders.UpcomingExpandSmartFeedViewHolder$loadAvatar$1", f = "UpcomingExpandSmartFeedViewHolder.kt", l = {105}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.q.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/q/g.class */
public final class C9497g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f28794e;

    /* renamed from: f */
    public final /* synthetic */ C9499h f28795f;

    /* renamed from: g */
    public final /* synthetic */ String f28796g;

    /* renamed from: h */
    public final /* synthetic */ C8243a f28797h;

    @e(c = "com.truecaller.insights.ui.smartfeed.presentation.viewholders.UpcomingExpandSmartFeedViewHolder$loadAvatar$1$profile$1", f = "UpcomingExpandSmartFeedViewHolder.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.p.d.q.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/q/g$a.class */
    public static final class C9498a extends i implements p<i0, d<? super C8505a>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9498a(d dVar) {
            super(2, dVar);
            C9497g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27505i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9498a(dVar);
        }

        /* renamed from: k */
        public final Object m27504k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9497g c9497g = C9497g.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c9497g.f28795f.f28804i.mo28428Kw(c9497g.f28796g);
        }

        /* renamed from: s */
        public final Object m27503s(Object obj) {
            C25225a.m3932a3(obj);
            C9497g c9497g = C9497g.this;
            return c9497g.f28795f.f28804i.mo28428Kw(c9497g.f28796g);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9497g(C9499h c9499h, String str, C8243a c8243a, d dVar) {
        super(2, dVar);
        this.f28795f = c9499h;
        this.f28796g = str;
        this.f28797h = c8243a;
    }

    /* renamed from: i */
    public final d<s> m27508i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9497g(this.f28795f, this.f28796g, this.f28797h, dVar);
    }

    /* renamed from: k */
    public final Object m27507k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9497g(this.f28795f, this.f28796g, this.f28797h, dVar).m27506s(s.a);
    }

    /* renamed from: s */
    public final Object m27506s(Object obj) {
        a aVar = a.a;
        int i = this.f28794e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f28795f.f28805j;
            C9498a c9498a = new C9498a(null);
            this.f28794e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c9498a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C8505a c8505a = (C8505a) obj;
        this.f28797h.m28738pk(false);
        C8243a.m28739ok(this.f28797h, this.f28795f.m27512O4(c8505a), false, 2, null);
        this.f28795f.f28800e.put(this.f28796g, c8505a);
        C9499h c9499h = this.f28795f;
        Objects.requireNonNull(c9499h);
        ArrayList arrayList = new ArrayList();
        for (String str : c9499h.f28800e.keySet()) {
            C8505a c8505a2 = c9499h.f28800e.get(str);
            if (c8505a2 != null) {
                if (c8505a2.f26291b.length() == 0) {
                    arrayList.add(c8505a2.f26290a);
                } else {
                    arrayList.add(c8505a2.f26291b);
                }
            }
        }
        TextView textView = c9499h.f28802g.f27716f;
        l.d(textView, "binding.senders");
        textView.setText(s1.u.i.O(arrayList, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 63));
        return s.a;
    }
}
