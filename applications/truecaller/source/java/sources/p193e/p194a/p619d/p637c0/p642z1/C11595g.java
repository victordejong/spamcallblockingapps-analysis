package p193e.p194a.p619d.p637c0.p642z1;

import com.truecaller.voip.api.CallInfoResponseDto;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p651p.AbstractC11744a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import x3.a0;
@e(c = "com.truecaller.voip.util.callinfo.CallInfoProviderImpl$resolveNumbersInCall$2", f = "CallInfoProvider.kt", l = {34, 41}, m = "invokeSuspend")
/* renamed from: e.a.d.c0.z1.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/g.class */
public final class C11595g extends i implements p<i0, d<? super List<? extends String>>, Object> {

    /* renamed from: e */
    public int f33993e;

    /* renamed from: f */
    public final /* synthetic */ C11597h f33994f;

    /* renamed from: g */
    public final /* synthetic */ String f33995g;

    /* renamed from: h */
    public final /* synthetic */ String f33996h;

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoProviderImpl$resolveNumbersInCall$2$callInfoResponseDto$1", f = "CallInfoProvider.kt", l = {34}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.g$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/g$a.class */
    public static final class C11596a extends i implements p<AbstractC11744a, d<? super CallInfoResponseDto>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33997e;

        /* renamed from: f */
        public int f33998f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11596a(d dVar) {
            super(2, dVar);
            C11595g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24420i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11596a c11596a = new C11596a(dVar);
            c11596a.f33997e = obj;
            return c11596a;
        }

        /* renamed from: k */
        public final Object m24419k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11596a c11596a = new C11596a(dVar);
            c11596a.f33997e = obj;
            return c11596a.m24418s(s.a);
        }

        /* renamed from: s */
        public final Object m24418s(Object obj) {
            a aVar = a.a;
            int i = this.f33998f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11744a abstractC11744a = (AbstractC11744a) this.f33997e;
                String str = C11595g.this.f33995g;
                this.f33998f = 1;
                Object m24060l = abstractC11744a.m24060l(str, this);
                obj = m24060l;
                if (m24060l == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((a0) obj).b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11595g(C11597h c11597h, String str, String str2, d dVar) {
        super(2, dVar);
        this.f33994f = c11597h;
        this.f33995g = str;
        this.f33996h = str2;
    }

    /* renamed from: i */
    public final d<s> m24423i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11595g(this.f33994f, this.f33995g, this.f33996h, dVar);
    }

    /* renamed from: k */
    public final Object m24422k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11595g(this.f33994f, this.f33995g, this.f33996h, dVar).m24421s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0157  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24421s(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11595g.m24421s(java.lang.Object):java.lang.Object");
    }
}
