package p193e.p194a.p947k.p948a.p962i;

import com.truecaller.videocallerid.upload.UploadingStates;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p980p.AbstractC16249b;
import p193e.p194a.p947k.p980p.C16250c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingViewPresenter$subscribeToIsEnabledChanged$1", f = "VideoCallerIdSettingViewPresenter.kt", l = {83}, m = "invokeSuspend")
/* renamed from: e.a.k.a.i.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/i/g.class */
public final class C15799g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f44574e;

    /* renamed from: f */
    public int f44575f;

    /* renamed from: g */
    public final /* synthetic */ C15795f f44576g;

    @e(c = "com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingViewPresenter$subscribeToIsEnabledChanged$1$1", f = "VideoCallerIdSettingViewPresenter.kt", l = {85, 86}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.i.g$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/i/g$a.class */
    public static final class C15800a extends i implements p<UploadingStates, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f44577e;

        /* renamed from: f */
        public int f44578f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15800a(d dVar) {
            super(2, dVar);
            C15799g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18287i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C15800a c15800a = new C15800a(dVar);
            c15800a.f44577e = obj;
            return c15800a;
        }

        /* renamed from: k */
        public final Object m18286k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15800a c15800a = new C15800a(dVar);
            c15800a.f44577e = obj;
            return c15800a.m18285s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00b8  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m18285s(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 210
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p962i.C15799g.C15800a.m18285s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15799g(C15795f c15795f, d dVar) {
        super(2, dVar);
        this.f44576g = c15795f;
    }

    /* renamed from: i */
    public final d<s> m18290i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C15799g c15799g = new C15799g(this.f44576g, dVar);
        c15799g.f44574e = obj;
        return c15799g;
    }

    /* renamed from: k */
    public final Object m18289k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C15799g c15799g = new C15799g(this.f44576g, dVar);
        c15799g.f44574e = obj;
        return c15799g.m18288s(s.a);
    }

    /* renamed from: s */
    public final Object m18288s(Object obj) {
        a aVar = a.a;
        int i = this.f44575f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f44574e;
            AbstractC16249b abstractC16249b = this.f44576g.f44559j;
            p<? super UploadingStates, ? super d<? super s>, ? extends Object> c15800a = new C15800a(null);
            this.f44575f = 1;
            if (((C16250c) abstractC16249b).m17678a(i0Var, c15800a, this) == aVar) {
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
